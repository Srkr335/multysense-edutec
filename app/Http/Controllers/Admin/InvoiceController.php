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
    $studentInvoice = StudentPayment::with('student','course')->find($id);
    if (! $studentInvoice) {
        abort(404, "Payment record not found");
    }

    $studentPayments = StudentPayment::where('student_id', $studentInvoice->student_id)->get();
    $totalPaid = $studentPayments->sum('pay_amount');
    

    $tax = 18;
    $totalTax = $studentInvoice->pay_amount * $tax / 100;
    $paidAmount = $studentInvoice->pay_amount;
    $courseFee = $paidAmount - $totalTax;

    $purchasedCourse = StudentPurchasedCourse::where('student_id', $studentInvoice->student_id)->first();
    if (! $purchasedCourse) {
        abort(404, "Purchased course record not found");
    }

    $balanceDue = $purchasedCourse->course_total_amount - $totalPaid;

    if ($purchasedCourse->installment > 0) {
        $monthlyInstallment = number_format($purchasedCourse->course_total_amount / $purchasedCourse->installment, 2);
    } else {
        $monthlyInstallment = "0.00";
    }

    // Pass same data — view handles rendering two copies side by side
    $pdf = Pdf::loadView(' admin.pages.invoices.pdf', [
        'studentInvoice' => $studentInvoice,
        'purchasedCourse' => $purchasedCourse,
        'monthlyInstallment' => $monthlyInstallment,
        'courseFee' => $courseFee,
        'totalTax' => $totalTax,
        'balanceDue' => $balanceDue,
        'totalPaid' => $totalPaid,
        'paidAmount' => $paidAmount, 
        // etc
    ]);


    return $pdf->download("invoice_{$id}.pdf");
}

}