<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Scheme;
use App\Models\Category;
use App\Models\Course;

class SchemeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $schemes = Scheme::with('course','category')->paginate(5);
        return view('admin.pages.scheme.index',compact('schemes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::where('status',1)->get();
        $courses = Course::where('status',1)->get();
        return view('admin.pages.scheme.create',compact('categories','courses'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $scheme = new Scheme();
        $scheme->name = $request->name;
        $scheme->discount = $request->discount;
        $scheme->category_id = $request->category;
        $scheme->course_id = $request->course;
        $scheme->status = $request->status;
        $scheme->save();
        return redirect()->route('scheme.index')
            ->with('success', 'Scheme created successfully');
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
        $editScheme = Scheme::find($id);
        $categories = Category::where('status',1)->get();
        $courses = Course::where('status',1)->get();
        return view('admin.pages.scheme.edit',compact('editScheme','categories','courses'));
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
        $updateScheme = Scheme::where('id',$request->scheme_id)->update([
            'name'=> $request->name,
            'discount'=> $request->discount,
            'category_id'=> $request->category,
            'course_id'=> $request->course,
            'status'=> $request->status,
        ]);
        return redirect()->route('scheme.index')
            ->with('success', 'Scheme Updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        Scheme::where('id',$request->scheme_id)->delete();
        return redirect()->route('scheme.index')
        ->with('success', 'Scheme Deleted successfully');
    }
}
