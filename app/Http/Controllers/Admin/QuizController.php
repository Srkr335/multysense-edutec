<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Quiz;
use Illuminate\Http\Request;

class QuizController extends Controller
{
    public function index()
    {
        $quizzes = Quiz::orderBy('id', 'desc')->paginate(10);

        return view('admin.pages.quiz.index', compact('quizzes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $courses = Course::where('status', 1)->get();

        return view('admin.pages.quiz.create', compact('courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $quiz = new Quiz();
        $quiz->course_id = $request->course_id;
        $quiz->question = $request->question;
        $quiz->answer = $request->answer;
        $quiz->option_a = $request->option_a;
        $quiz->option_b = $request->option_b;
        $quiz->option_c = $request->option_c;
        $quiz->option_d = $request->option_d;
        $quiz->description = $request->description;
        $quiz->status = $request->status;
        $quiz->save();

        return redirect()->route('admin.quiz.index')->with('success', 'Quiz created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $quiz = Quiz::find($id);
        $courses = Course::where('status', 1)->get();

        return view('admin.pages.quiz.edit', compact('quiz', 'courses'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $quiz = Quiz::find($id);
        $quiz->course_id = $request->course_id;
        $quiz->question = $request->question;
        $quiz->answer = $request->answer;
        $quiz->option_a = $request->option_a;
        $quiz->option_b = $request->option_b;
        $quiz->option_c = $request->option_c;
        $quiz->option_d = $request->option_d;
        $quiz->description = $request->description;
        $quiz->status = $request->status;
        $quiz->save();

        return redirect()->route('admin.quiz.index')->with('success', 'Quiz created successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Quiz::find($id)->delete();

        return redirect()->route('admin.quiz.index')->with('success', 'Quiz deleted successfully');
    }
}
