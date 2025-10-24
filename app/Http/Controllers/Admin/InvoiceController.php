<?php

  

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\StudentPayment;
use App\Models\StudentPurchasedCourse;
use Illuminate\Http\Request;

use Barryvdh\DomPDF\Facade\Pdf;

  

class InvoiceController extends Controller

{

    /**

     * Write code on Method

     *

     * @return response()

     */

   public function index(Request $request, $id)
{
    $studentInvoice = StudentPayment::with('student', 'course')->find($id);
    if (!$studentInvoice) {
        abort(404, "Payment record not found");
    }

    // Fetch all payments by this student
    $studentPayments = StudentPayment::where('student_id', $studentInvoice->student_id)->get();
    $totalPaid = $studentPayments->sum('pay_amount');

    // Tax & Fee
    $tax = 18;
    $totalTax = $studentInvoice->pay_amount * $tax / 100;
    $paidAmount = $studentInvoice->pay_amount;
    $courseFee = $paidAmount - $totalTax;

    // Purchased Course
    $purchasedCourse = StudentPurchasedCourse::where('student_id', $studentInvoice->student_id)->first();
    if (!$purchasedCourse) {
        abort(404, "Purchased course record not found");
    }

    // Basic calculations
    $totalAmount = $purchasedCourse->course_total_amount ?? 0;
    $totalInstallments = $purchasedCourse->installment ?? 0;
    $balanceDue = $totalAmount - $totalPaid;

    // Monthly installment calculation
    if ($totalInstallments > 0) {
        $monthlyInstallment = number_format($totalAmount / $totalInstallments, 2, '.', '');
    } else {
        $monthlyInstallment = "0.00";
    }

    // Fetch other details
    $totalDue = $studentInvoice->due_amount ?? 0;
    $currentInstallment = $studentInvoice->current_installment ?? 0;
    $totalamount = $currentInstallment + $totalDue;

    $TAMF = $totalAmount; // Total Amount of Main Fee

    $installmentAmount = $totalInstallments > 0 ? $totalAmount / $totalInstallments : 0;

    if ($balanceDue <= 0) {
        $nextInstallment = 0;
    } elseif ($totalPaid == 0) {
        $nextInstallment = $installmentAmount;
    } else {
        // How many full installments are paid?
        $completedInstallments = floor($totalPaid / $installmentAmount);

        // How much paid in the current installment
        $currentInstallmentPaid = $totalPaid - ($completedInstallments * $installmentAmount);

        // Remaining from current installment
        $remainingCurrent = $installmentAmount - $currentInstallmentPaid;

        // Add remaining current + next full installment (if not last)
        if ($completedInstallments < $totalInstallments - 1) {
            $nextInstallment = $installmentAmount + $remainingCurrent;
        } else {
            $nextInstallment = $balanceDue;
        }

        // Don’t exceed balance due
        if ($nextInstallment > $balanceDue) {
            $nextInstallment = $balanceDue;
        }
    }

    $nextInstallment = number_format($nextInstallment, 2, '.', '');

    // Generate PDF
    $pdf = Pdf::loadView('admin.pages.invoices.pdf', [
        'studentInvoice' => $studentInvoice,
        'purchasedCourse' => $purchasedCourse,
        'monthlyInstallment' => $monthlyInstallment,
        'courseFee' => $courseFee,
        'totalTax' => $totalTax,
        'balanceDue' => $balanceDue,
        'totalPaid' => $totalPaid,
        'paidAmount' => $paidAmount,
        'currentInstallment' => $currentInstallment,
        'totalamount' => $totalamount,
        'totalDue' => $totalDue,
        'TAMF' => $TAMF,
        'nextInstallment' => $nextInstallment, //  included correctly
    ]);

    return $pdf->download("invoice_{$id}.pdf");
}

}