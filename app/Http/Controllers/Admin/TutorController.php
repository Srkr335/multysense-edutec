<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Tutor;
use App\Models\Country;
use App\Models\TutorPoints;
use App\Models\StudentPoint;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Eloquent\SoftDeletes;


class TutorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
        use SoftDeletes;
        protected $fillable = [
            'first_name', 'last_name', 'email', 'mobile_no', 'dob','country_id', 'address_1', 'address_2', 'city', 'pincode', 'image'
        ];
        protected $dates = ['deleted_at'];
        public function index()
        {
            $tutors = Tutor::paginate(10);
            return view('admin.pages.tutor.index', compact('tutors'));
        }

        /**
         * Show the form for creating a new resource.
         *
         * @return \Illuminate\Http\Response
         */
        public function create()
        {
            $countries = Country::get();
            return view('admin.pages.tutor.create', compact('countries'));
        }
            //allocatePoints for students performance 
            public function allocatePoints(Request $request)
            {
                $request->validate([
                    'student_id' => 'required|exists:students,id',
                    'points'     => 'required|integer|min:1',
                    'remarks'    => 'nullable|string|max:255',
                ]);
                // Get logged-in user's tutor profile
                $tutor = Tutor::where('user_id', auth()->id())->first();
                if (!$tutor) {
                    return back()->with('error', 'Tutor profile not found.');
                }
                // 1. Fetch tutor's available points
                $tutorPoints = TutorPoints::where('tutor_id', $tutor->id)->first();
                if (!$tutorPoints) {
                    return back()->with('error', 'No points record found for this tutor.');
                }
                // 2. Check the avaliable  balance points
                if ($tutorPoints->points < $request->points) {
                    return back()->with('error', 'Insufficient points to allocate.');
                }
                // 3. Deduct points
                $tutorPoints->points -= $request->points;
                $tutorPoints->save();
                // 4. Create student_points record with actual tutor_id
                StudentPoint::create([
                    'student_id' => $request->student_id,
                    'tutor_id'   => $tutor->id, // <-- actual tutor table id
                    'points'     => $request->points,
                    'reason'     => $request->remarks,
                ]);
                return redirect()->back()->with('success', 'Points allocated and deducted from your balance.');
            }




                /**
                 * Store a newly created resource in storage.
                 *
                 * @param  \Illuminate\Http\Request  $request
                 * @return \Illuminate\Http\Response
                 */
            
                public function store(Request $request)
                {
                    $request->validate([
                        'email'=>'required|email|unique:users,email',
                    ]);
                    $user = new User();
                    $user->name = $request->f_name;
                    $user->email = $request->email;
                    $user->mobile_no = $request->phone;
                    $user->password = Hash::make($request->password);
                    $user->save();

                        $tutor = new Tutor();
                        $tutor->first_name = $request->f_name;
                        $tutor->last_name = $request->l_name;
                        $tutor->user_id = $user->id;
                        $tutor->mobile_no = $request->phone;
                        $tutor->email = $request->email;
                        $tutor->dob = $request->b_day;
                        $tutor->country_id = $request->country;
                        $tutor->city = $request->city;
                        $tutor->pincode = $request->zipcode;
                        $tutor->address_1 = $request->address_1;
                        $tutor->address_2 = $request->address_2;
                        if ($request->hasFile('image')) {
                            $imageName = time() . '.' . $request->image->extension();
                            $request->image->move(public_path('/images/tutor'), $imageName);
                            $tutor->image = $imageName;
                        }
                                $tutor->save();

                                // after add new tutor then auto generate existing students points
                                $tutors   = Tutor::pluck('id'); // all tutor IDs (including new one)
                                    $students = DB::table('students')->pluck('id'); // all student IDs
                                    $pointsData = [];
                                    foreach ($tutors as $tutorId) {
                                        foreach ($students as $studentId) {
                                            // Avoid duplicate: insert only if this tutor-student combo does not exist
                                            $exists = DB::table('tutor_student_points')
                                                ->where('tutor_id', $tutorId)
                                                ->where('student_id', $studentId)
                                                ->exists();
                                            if (!$exists) {
                                                $pointsData[] = ['tutor_id'   => $tutorId,'student_id' => $studentId,'points'     => 10,'created_at' => now(),'updated_at' => now(),
                                                ];
                                            }
                                        }
                                    }
                                if (!empty($pointsData)) {
                                    DB::table('tutor_student_points')->insert($pointsData);
                                        }  
                                    $newTutorId = $tutor->id;
                                    // 1. Get all student IDs who already have points
                                    $students = DB::table('tutor_points')
                                        ->select('student_id', DB::raw('SUM(points) as total_points'))->groupBy('student_id')->get();
                                    foreach ($students as $student) {
                                        // 2. Count existing tutors for this student
                                        $existingTutorsCount = DB::table('tutor_points')
                                            ->where('student_id', $student->student_id) ->distinct() ->count('tutor_id');
                                        // 3. New total tutors = old count + 1 (the new tutor)
                                        $totalTutors = $existingTutorsCount + 1;
                                        // 4. Divide points equally
                                        $pointsPerTutor = floor($student->total_points / $totalTutors);
                                        // 5. Update old tutors’ points
                                        DB::table('tutor_points')->where('student_id', $student->student_id)->update(['points' => $pointsPerTutor]);
                                        // 6. Insert new record for new tutor
                                        DB::table('tutor_points')->insert([
                                            'student_id' => $student->student_id,'tutor_id'   => $newTutorId,'points'     => $pointsPerTutor,'created_at' => now(),'updated_at' => now(),
                                        ]);
                                    }
                                        return redirect()->route('admin.tutor.index')->with('success', 'Tutor saved successfully');
                                        }


                /**
                 * Display the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
                public function show($id)
                {
                    $tutor = Tutor::where('id', $id)->first();
                    $countries = Country::get();
                    return view('admin.pages.tutor.show', compact('tutor', 'countries'));
                }

                /**
                 * Show the form for editing the specified resource.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
                public function edit($id)
                {
                    //
                }

                /**
                 * Update the specified resource in storage.
                 *
                 * @param  \Illuminate\Http\Request  $request
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
                public function update(Request $request)
                {
                    $user = User::find($request->user_id);
                    $user->name = $request->f_name;
                    $user->email = $request->email;
                    $user->password = Hash::make($request->password);
                    $user->save();

                    $tutor = Tutor::find($request->tutor_id);
                    $tutor->first_name = $request->f_name;
                    $tutor->last_name = $request->l_name;
                    $tutor->user_id = $user->id;
                    $tutor->mobile_no = $request->phone;
                    $tutor->email = $request->email;
                    $tutor->dob = $request->b_day;
                    $tutor->country_id = $request->country;
                    $tutor->city = $request->city;
                    $tutor->pincode = $request->zipcode;
                    $tutor->address_1 = $request->address_1;
                    $tutor->address_2 = $request->address_2;
                    if ($request->hasFile('image')) {
                        $imageName = time() . '.' . $request->image->extension();

                        $request->image->move(public_path('/images/tutor'), $imageName);
                        $tutor->image = $imageName;
                    }
                    $tutor->save();

                    return redirect()->route('admin.tutor.index')->with('success', 'Tutor updated successfully');
                }

                /**
                 * Remove the specified resource from storage.
                 *
                 * @param  int  $id
                 * @return \Illuminate\Http\Response
                 */
                public function destroy($id)
            {
                $tutor = Tutor::find($id);
                if (!$tutor) {
                    return redirect()->route('admin.tutor.index')->with('error', 'Tutor not found.');
                }
                $tutor->delete(); // Soft delete
                return redirect()->route('admin.tutor.index')->with('success', 'Tutor profile has been temporary deactivated.');
            }
            }
