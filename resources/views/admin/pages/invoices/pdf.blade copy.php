<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>MULTYSENSE EDU TEC</title>
 	<link rel="stylesheet" href="{{ public_path('css/student-invoice.css') }}" type="text/css>">

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

      <table class="details" >
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

       <table style="width:80%; border-collapse: collapse; font-size: 12px; text-align:left;">
      <thead>
        <tr style="border:1px solid #000; background-color:#f2f2f2;">
          <th style="border:1px solid #000; padding:5px;">SL. NO</th>
          <th style="border:1px solid #000; padding:5px;">PARTICULARS</th>
          <th style="border:1px solid #000; padding:5px;">SAC</th>
          <th style="border:1px solid #000; padding:5px;">Amt</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="border:1px solid #000; padding:5px;">1</td>
          <td style="border:1px solid #000; padding:5px;">DOWN PAYMENT</td>
          <td style="border:1px solid #000; padding:5px;text-align:center;"> 9992.</td>
          <td style="border:1px solid #000; padding:5px;text-align:center;">{{$courseFee}}</td>
        </tr>
        <tr>
          <td style="border:1px solid #000; padding:5px;">2</td>
          <td style="border:1px solid #000; padding:5px;">INSTALLMENT</td>
<td style="border:1px solid #000; padding:5px; text-align:center;">
    <span >
        {{ $studentInvoice->installment }}</span>
</td>
          <td style="border:1px solid #000; padding:5px;"></td>
        </tr>
        <tr>
          <td style="border:1px solid #000; padding:5px;">3</td>
          <td style="border:1px solid #000; padding:5px;">
            CGST (9.00 %)<br>
            SGST (9.00 %)<br>
            TAXABLE VALUE
          </td>
          <td style="border:1px solid #000; padding:5px;"></td>
          <td style="border:1px solid #000; padding:5px;text-align:center;">{{$totalTax}}</td>
        </tr>
        <tr>
          <td style="border:1px solid #000; padding:5px;">4</td>
          <td style="border:1px solid #000; padding:5px;">MISCELLANEOUS</td>
          <td style="border:1px solid #000; padding:5px;"></td>
          <td style="border:1px solid #000; padding:5px;"></td>
        </tr>
        <!-- <tr>
          <td colspan="3" style="border:1px solid #000; padding:5px; text-align:start;">BALANCE DUE</td>
          <td style="border:1px solid #000; padding:5px;">{{$balanceDue}}</td>
        </tr>
        <tr> -->

 <tr >
          <td  style="border:1px solid #000; padding:5px;">TOTAL AMOUNT</td>
          <td     style="border:1px solid #000; padding:5px; text-align:center;"></td>
          <td  style="border:1px solid #000; padding:5px;">{{$TAMF}}</td>
          <td  style="border:1px solid #000; padding:5px;"></td>
        </tr>




           <tr>
          <td style="border:1px solid #000; padding:5px;">CURRENT INSTALLMENT PENDING</td>
          <td style="border:1px solid #000; padding:5px;  text-align:center;">{{$nextInstallment}}</td>
           <td  style="border:1px solid #000; padding:5px;"></td>
          <td  style="border:1px solid #000; padding:5px;"></td>
        </tr>


         
         <tr >
          <td  style="border:1px solid #000; padding:5px;">TOTAL PENDING</td>
          <td     style="border:1px solid #000; padding:5px; text-align:center;">{{ $balanceDue }}</td>
            <td  style="border:1px solid #000; padding:5px;"></td>
          <td  style="border:1px solid #000; padding:5px;"></td>
        </tr>


          <td colspan="3" style="border:1px solid #000; padding:5px; text-align:start; font-weight:bold;">TOTAL AMOUNT</td>
          <td  style="border:1px solid #000; padding:5px; font-weight:bold;text-align:center;">  {{ $courseFee + $totalTax }}
          </td>
        </tr>
      </tbody>
    </table>

      <div class="footer">
        <p><strong>Amount in words:</strong>  Only</p>
        <p>Fee once paid will not be refunded under any circumstances.</p>
        <p class="signature">For {{ $studentInvoice->student->centre->name }}<br>Authorised Signatory</p>
        <p class="seal">Admin. Office : House of MultySense , Nilamel-2, Kerala, India.<br>Corp. Office : Peace Centre, Singapore 228149</p>
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
        <table style="width:80%; border-collapse: collapse; font-size: 12px; text-align:left;">
      <thead>
        <tr style="border:1px solid #000; background-color:#f2f2f2;">
          <th style="border:1px solid #000; padding:5px;">SL. NO</th>
          <th style="border:1px solid #000; padding:5px;">PARTICULARS</th>
          <th style="border:1px solid #000; padding:5px;">SAC</th>
          <th style="border:1px solid #000; padding:5px;">Amt</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="border:1px solid #000; padding:5px;">1</td>
          <td style="border:1px solid #000; padding:5px;">DOWN PAYMENT</td>
          <td style="border:1px solid #000; padding:5px;text-align:center;"> 9992.</td>
          <td style="border:1px solid #000; padding:5px;text-align:center;">{{$courseFee}}</td>
        </tr>
        <tr>
          <td style="border:1px solid #000; padding:5px;">2</td>
          <td style="border:1px solid #000; padding:5px;">INSTALLMENT</td>
<td style="border:1px solid #000; padding:5px; text-align:center;">
    <span >
        {{ $studentInvoice->installment }}</span>
</td>
          <td style="border:1px solid #000; padding:5px;"></td>
        </tr>
        <tr>
          <td style="border:1px solid #000; padding:5px;">3</td>
          <td style="border:1px solid #000; padding:5px;">
            CGST (9.00 %)<br>
            SGST (9.00 %)<br>
            TAXABLE VALUE
          </td>
          <td style="border:1px solid #000; padding:5px;"></td>
          <td style="border:1px solid #000; padding:5px; text-align:center;">{{$totalTax}}</td>
        </tr>
        <tr>
          <td style="border:1px solid #000; padding:5px;">4</td>
          <td style="border:1px solid #000; padding:5px;">MISCELLANEOUS</td>
          <td style="border:1px solid #000; padding:5px;"></td>
          <td style="border:1px solid #000; padding:5px;"></td>
        </tr>
        <!-- <tr>
          <td colspan="3" style="border:1px solid #000; padding:5px; text-align:start;">BALANCE DUE</td>
          <td style="border:1px solid #000; padding:5px;">{{$balanceDue}}</td>
        </tr>
        <tr> -->

 <tr >
          <td  style="border:1px solid #000; padding:5px;">TOTAL AMOUNT</td>
          <td     style="border:1px solid #000; padding:5px; text-align:center;"></td>
          <td  style="border:1px solid #000; padding:5px; text-align:center;">{{$TAMF}}</td>
          <td  style="border:1px solid #000; padding:5px;"></td>
        </tr>




           <tr>
          <td style="border:1px solid #000; padding:5px;">CURRENT INSTALLMENT PENDING</td>
          <td style="border:1px solid #000; padding:5px;  text-align:center;">{{$nextInstallment}}</td>
           <td  style="border:1px solid #000; padding:5px;"></td>
          <td  style="border:1px solid #000; padding:5px;"></td>
        </tr>


         
         <tr >
          <td  style="border:1px solid #000; padding:5px;">TOTAL PENDING</td>
          <td     style="border:1px solid #000; padding:5px; text-align:center;">{{ $balanceDue }}</td>
            <td  style="border:1px solid #000; padding:5px;"></td>
          <td  style="border:1px solid #000; padding:5px;"></td>
        </tr>


          <td colspan="3" style="border:1px solid #000; padding:5px; text-align:start; font-weight:bold;">TOTAL AMOUNT</td>
          <td  style="border:1px solid #000; padding:5px; font-weight:bold; text-align:center;">  {{ $courseFee + $totalTax }}
          </td>
        </tr>
      </tbody>
    </table>

      <div class="footer">
        <p><strong>Amount in words:</strong>  Only</p>
        <p>Fee once paid will not be refunded under any circumstances.</p>
        <p class="signature">For {{ $studentInvoice->student->centre->name }}<br>Authorised Signatory</p>
        <p class="seal">Admin. Office : House of MultySense , Nilamel-2, Kerala, India.<br>Corp. Office : Peace Centre, Singapore 228149</p>
      </div>
    </div>
     </div>
  
</body>
</html>
