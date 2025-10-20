<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>MULTYSENSE EDU TEC</title>
 	<link rel="stylesheet" href="{{ public_path('css/student-invoice.css') }}" type="text/css"> 

</head>
<body>

  <div class="page-wrapper">
    <!--  Office Copy -->
    <div class="office-receipt">
      <div class="header">
        <img src="{{ public_path('eduimg/logo.png') }}" alt="Logo" width="350" height="100"><br>
        <h2>{{ $studentInvoice->student->centre->name }}</h2>
        <div class="sub-header">
          {{ $studentInvoice->student->centre->address }}<br>
          {{ $studentInvoice->student->centre->city }} - {{ $studentInvoice->student->centre->pincode }}<br>
          Phone : {{ $studentInvoice->student->centre->mobile }}
        </div>
        <h3 style="color:#60A5FA;">FEE RECEIPT</h3>
      </div>

      <table class="details">
        <tr><td><strong>Office Copy</strong></td></tr>
        <tr>
          <td>Invoice No: <strong>#{{ str_pad($studentInvoice->invoice_number, 3, '0', STR_PAD_LEFT) }}</strong></td>
          <td>Date: <strong>{{ date('d-M-Y', strtotime($studentInvoice->payment_date)) }}</strong></td>
        </tr>
        <tr>
          <td>Name: <strong>{{ $studentInvoice->student->studentname->name }}</strong></td>
          <td>Reg No: <strong>{{ $studentInvoice->student->reg_no }}</strong></td>
        </tr>
        <tr>
          <td>Course: <strong>{{ $studentInvoice->course->title }}</strong></td>
          <td>Address: <strong>{{ $studentInvoice->student->address_1 }}</strong></td>
        </tr>
      </table>

      <table class="table">
        <tr><th>SL. NO</th><th>PARTICULARS</th><th>SAC</th><th>₹</th></tr>

        <tr><td>1</td><td>Installment</td><td>999293</td><td></td></tr>
        <tr><td>2</td><td>CGST (9%)</td><td></td><td>{{ number_format($totalTax/2, 2) }}</td></tr>
        <tr><td>3</td><td>SGST (9%)</td><td></td><td>{{ number_format($totalTax/2, 2) }}</td></tr>
        <tr><td>4</td><td>Balance Due</td><td></td><td>{{ number_format($balanceDue, 2) }}</td></tr>

        <tr><td colspan="3" class="amount">Sub Total</td><td><strong>{{ number_format($courseFee, 2) }}</strong></td></tr>
        <tr><td colspan="3" class="amount">Total Amount</td><td><strong>{{ number_format($courseFee + $totalTax, 2) }}</strong></td></tr>
      </table>

      <div class="footer">
        <p><strong>Amount in words:</strong>  Only</p>
        <p>Fee once paid will not be refunded under any circumstances.</p>
        <p class="signature">For {{ $studentInvoice->student->centre->name }}<br>Authorised Signatory</p>
        <p class="seal">Admin. Office : House of G-TEC, Calicut-2, Kerala, India.<br>Corp. Office : Peace Centre, Singapore 228149</p>
      </div>
    </div>
     </div>

      
    <!-- Student Copy -->
    <div class="student-receipt">
      <div class="header">
        <img src="{{ public_path('eduimg/logo.png') }}" alt="Logo" width="350" height="100"><br>
        <h2>{{ $studentInvoice->student->centre->name }}</h2>
        <div class="sub-header">
          {{ $studentInvoice->student->centre->address }}<br>
          {{ $studentInvoice->student->centre->city }} - {{ $studentInvoice->student->centre->pincode }}<br>
          Phone : {{ $studentInvoice->student->centre->mobile }}
        </div>
        <h3 style="color:#60A5FA;">FEE RECEIPT</h3>
      </div>

      <table class="details">
        <tr><td><strong>Student Copy</strong></td></tr>
        <tr>
          <td>Invoice No: <strong>#{{ str_pad($studentInvoice->invoice_number, 3, '0', STR_PAD_LEFT) }}</strong></td>
          <td>Date: <strong>{{ date('d-M-Y', strtotime($studentInvoice->payment_date)) }}</strong></td>
        </tr>
        <tr>
          <td>Name: <strong>{{ $studentInvoice->student->studentname->name }}</strong></td>
          <td>Reg No: <strong>{{ $studentInvoice->student->reg_no }}</strong></td>
        </tr>
        <tr>
          <td>Course: <strong>{{ $studentInvoice->course->title }}</strong></td>
          <td>Address: <strong>{{ $studentInvoice->student->address_1 }}</strong></td>
        </tr>
      </table>

      <table class="table">
        <tr><th>SL. NO</th><th>PARTICULARS</th><th>SAC</th><th>₹</th></tr>

        <tr><td>1</td><td>Installment</td><td>999293</td><td></td></tr>
        <tr><td>2</td><td>CGST (9%)</td><td></td><td>{{ number_format($totalTax/2, 2) }}</td></tr>
        <tr><td>3</td><td>SGST (9%)</td><td></td><td>{{ number_format($totalTax/2, 2) }}</td></tr>
        <tr><td>4</td><td>Balance Due</td><td></td><td>{{ number_format($balanceDue, 2) }}</td></tr>

        <tr><td colspan="3" class="amount">Sub Total</td><td><strong>{{ number_format($courseFee, 2) }}</strong></td></tr>
        <tr><td colspan="3" class="amount">Total Amount</td><td><strong>{{ number_format($courseFee + $totalTax, 2) }}</strong></td></tr>
      </table>

      <div class="footer">
        <p><strong>Amount in words:</strong>  Only</p>
        <p>Fee once paid will not be refunded under any circumstances.</p>
        <p class="signature">For {{ $studentInvoice->student->centre->name }}<br>Authorised Signatory</p>
        <p class="seal">Admin. Office : House of MultySense , Nilamel, Kerala, India.<br>Corp. Office : Peace Centre, Singapore 228149</p>
      </div>
    </div>
    

</body>
</html>
