<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <style>
        @page {
            margin: 0cm;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Times New Roman', serif;
        }

        .certificate {
            position: relative;
            width: 210mm;
            height: 297mm;
            background-image: url('{{ public_path("eduimg/edutec demo.jpg") }}');
            background-size: cover;
            background-repeat: no-repeat;
            /* page-break-after: always; */
        }

        .field {
            position: absolute;
            /* font-size: 18px; */
            font-weight: bold;
            color: #000;
            width: 100%;
            text-align: center;
        }

        .name {
            top: 133mm;
            font-weight: bold;
            color: #ff0000;
        }

        .course {
            top: 152mm;
            font-weight: bold;
            color: #ff0000
        }

        .month {
            top: 190.5mm;
            font-size: medium;
            color: #ff0000
        }

        .centre {
            top: 181mm;
            font-weight: bold;
            color: #ff0000
        }

        .duration {
            top: 171.5mm;
            font-weight: bold;
            color: #ff0000
        }

        .grade {
            top: 181mm;
            left: 111mm;
            width: 100mm;
            font-size: medium;
            color: #ff0000
        }

        .completion {
            top: 190.5mm;
            left: 70mm;
            width: 100mm;
            font-size: medium;
            text-align: right;
            color: #ff0000
        }

        /* .regno {top: 230px;text-align:left 100px;} */
        .regno {
            position: absolute;
            top: 69mm;
            left: 350px;
            font-size: 14px;
            font-size: medium;
            font-weight: bold;
            color: #ff0000;
            text-align: left;
        }

        .certificateno {
            position: absolute;
            top: 75mm;
            left: 38mm;
            font-size: medium;
            font-weight: bold;
            color: #ff0000;
            text-align: left;
        }

        .slno {
            position: absolute;
            top: 81mm;
            left: 28mm;
            font-size: medium;
            font-weight: bold;
            color: #ff0000;
            text-align: left;
        }

        .image {
            position: absolute;
            top: 66mm;
            left: 71mm;
            /* adjust this for spacing from the right edge */
        }
    </style>
</head>

<body>
    <div class="certificate">
        <div class="field name">{{ $result->student->user->name ?? 'Student Name' }}</div>
        <div class="field course">{{ $result->course->title ?? 'Course Title' }}</div>
        <div class="field month">{{ \Carbon\Carbon::parse($result->created_at)->format('F') }}</div>
        <div class="field centre">{{$student->city}}</div>
        <div class="field completion">{{ \Carbon\Carbon::parse($result->created_at)->format('Y') }}</div>
        <div class="field grade">{{ $result->grade }}</div>
        <div class="field regno">{{ $result->reg_no }}</div>
        <div class="field slno">{{$result->sl_no}}</div>
        <div class="field certificateno">{{ $result->certificate_no }}</div>

        <div class="field duration">
            {{ $result->course->duration_text ??'Course Duration' }}
        </div>

        <div class="field image">
            <img src="{{ $result->student->user->image ? public_path('images/student/' . $result->student->user->image) : public_path('images/No-Image.jpg') }}" width="300" height="379" alt="Student Photo">
        </div>
    </div>
</body>

</html>