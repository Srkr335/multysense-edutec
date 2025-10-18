<?php

namespace App\Http\Controllers\Admin;

use App\Models\Batch;
use App\Models\Centre;
use App\Models\Course;
use App\Models\Category;
use App\Models\Duration;
use App\Models\CourseTag;
use App\Models\CourseTutor;
use App\Models\CourseCentre;
use Illuminate\Http\Request;
use App\Models\CoursePricing;
use App\Models\CoursePlaylist;
use Yajra\DataTables\DataTables;
use App\Models\CourseStudyMaterial;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class CourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.pages.course.index');
    }

    public function getCourses(Request $request)
    {
        if ($request->ajax()) {
            $data = Course::orderBy('id', 'desc')
                ->select('*');
            return DataTables::of($data)
                ->addIndexColumn()
                ->editColumn('image', function ($row) {
                    if ($row->courcePlaylist) {
                        if ($row->courcePlaylist->cover_img) {
                            return '<img src="' . asset('/course/images/' . $row->courcePlaylist->cover_img) . '" class="img-fluid " alt="" width="60px">';
                        } elseif ($row->courcePlaylist->image_url) {
                            return '<img src="' . asset('/course/images/' . $row->courcePlaylist->image_url) . '" class="img-fluid " alt="" width="60px">';
                        }
                    } else {
                        return '<img src="' . asset('img/no_image.png') . '" class="img-fluid " alt="" width="60px">';
                    }
                })
                // ->addColumn('duration', function ($row) {
                //     return ucfirst($row->duration == 1 ? '1 Year' : '6 Month');
                // })
                ->addColumn('duration', function ($row) {
                    if ($row->duration == 1) {
                        return '1 Year';
                    } elseif ($row->duration == 2) {
                        return '6 Month';
                    } elseif ($row->duration == 3) {
                        return '8 Month';
                    } else {
                        return 'Unknown Duration';
                    }
                })
                ->addColumn('level', function ($row) {
                    return ucfirst($row->level);
                })
                ->addColumn('category', function ($row) {
                    return $row->category->name;
                })
                ->editColumn('status', function ($row) {
                    return $row->status === 1 ? '<span class="badge info-low">Active</span>' : '<span class="badge info-inter">Inactive</span>';
                })
                ->addColumn('action', function ($row) {
                    return '
        <div style="display: flex; justify-content: center; align-items: center; gap: 6px;">
            <a href="' . route("admin.course.study-materials", $row->id) . '" 
               class="btn btn-info btn-sm" 
               style="font-weight: 600; padding: 6px 10px; border-radius: 5px;">
               Study Materials
            </a>
            <a href="' . route("admin.course.edit", $row->id) . '" 
               class="btn btn-primary btn-sm" 
               style="font-weight: 600; padding: 6px 10px; border-radius: 5px;">
               Edit
            </a>
        </div>
    ';
                })

                ->rawColumns(['image', 'level', 'category', 'status', 'action'])
                ->make(true);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::get();
        $centres = Centre::where('status', 1)->get();
        $durations = Duration::where('status', 1)->get(); // ✅ add this

        return view('admin.pages.course.create', compact('categories', 'centres', 'durations'));
    }
    public function storeDuration(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'months' => 'nullable|integer|min:1',
            'status' => 'required|in:0,1',
        ]);

        $duration = Duration::create([
            'name' => $request->name,
            'months' => $request->months,
            'status' => $request->status,
        ]);

        if ($request->ajax()) {
            return response()->json([
                'success' => true,
                'id' => $duration->id,
                'name' => $duration->name,
                'message' => 'Duration added successfully!',
            ]);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'category_id' => 'required',
            'title'        => 'required',
            'fees'        => 'required',
            'installment'        => 'required',
            'level'        => 'required',
            'class_count'        => 'required',
            'quiz_count'        => 'required',
            'centre_name[]'     => 'required',
            'duration'     => 'required',
            // 'main_image'        => 'required',
            // 'main_video_link' => 'required',
        ]);
        $course = new Course();
        $course->category_id = $request->category_id;
        $course->title = $request->title;
        $course->description = $request->description;
        $course->fees = $request->fees;
        $course->installment = $request->installment;
        $course->level = $request->level;
        $course->class_count = $request->class_count;
        $course->quiz_count = $request->quiz_count;
        $course->is_top_rated = $request->is_top_rated;
        $course->is_trending = $request->is_trending;
        $course->is_most_purchased = $request->is_most_purchased;
        $course->is_newly_added = $request->is_newly_added;
        $course->is_free = $request->is_free;
        $course->status = $request->status;
        // $course->centre_id = $request->centre_name;
        $course->duration = $request->duration;
        $course->module_count = $request->module_count;
        $course->save();


        if (!empty($request->centre_name)) {
            foreach ($request->centre_name as $centreId) {
                CourseCentre::create([
                    'course_id' => $course->id,
                    'centre_id' => $centreId,
                ]);
            }
        }

        $coursePLaylist = new CoursePlaylist();
        $coursePLaylist->course_id = $course->id;

        if ($request->hasFile('cover_image')) {
            $coverImageName = time() . '.' . $request->cover_image->extension();

            $request->cover_image->move(public_path('/course/images'), $coverImageName);
            $coursePLaylist->cover_photo = $coverImageName;
        }
        if ($request->hasFile('main_image')) {
            $imageName = time() . '.' . $request->main_image->extension();

            $request->main_image->move(public_path('/course/images'), $imageName);
            $coursePLaylist->image_url = $imageName;
        }
        if ($request->hasFile('prelude_video_link')) {
            $videoName = time() . '.' . $request->prelude_video_link->extension();

            $request->prelude_video_link->move(public_path('/course/videos'), $videoName);
            $coursePLaylist->prelude_video_link = $videoName;
        }
        if ($request->hasFile('main_video_link')) {
            $videoName = time() . '.' . $request->main_video_link->extension();

            $request->main_video_link->move(public_path('/course/videos'), $videoName);
            $coursePLaylist->video_url = $videoName;
        }
        $coursePLaylist->youtube_url = $request->youtube_url;
        $coursePLaylist->url_1 = $request->url_1;
        $coursePLaylist->url_2 = $request->url_2;
        $coursePLaylist->url_3 = $request->url_3;
        $coursePLaylist->save();

        // $coursePrice = new CoursePricing();
        // $coursePrice->course_id = $course->id;
        // $coursePrice->price = $request->price;
        // $coursePrice->save();

        // if($request->tags != null){foreach ($request->tags as $tag) {
        //     $courseTag = new CourseTag();
        //     $courseTag->course_id = $course->id;
        //     $courseTag->tag_id = $tag;
        //     $courseTag->save();
        // }}

        // $courseTag = new CourseTutor();
        // $courseTag->course_id
        // $courseTag->tutor_id

        return redirect()->route('admin.course.index')->with('success', 'Course saved successfully');
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
        $categories = Category::get();
        $course = Course::find($id);
        $centres = Centre::where('status', 1)->get();
        $durations = Duration::where('status', 1)->get(); // ✅ add this


        // $centres = Centre::where('status',1)->get();

        return view('admin.pages.course.edit', compact('categories', 'course', 'centres', 'durations'));
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

        $course = Course::find($id);
        $course->category_id = $request->category_id;
        $course->title = $request->title;
        $course->description = $request->description;
        $course->fees = $request->fees;
        $course->installment = $request->installment;
        $course->level = $request->level;
        $course->class_count = $request->class_count;
        $course->quiz_count = $request->quiz_count;
        $course->is_top_rated = $request->is_top_rated;
        $course->is_trending = $request->is_trending;
        $course->is_most_purchased = $request->is_most_purchased;
        $course->is_newly_added = $request->is_newly_added;
        $course->is_free = $request->is_free;
        $course->status = $request->status;
        $course->duration = $request->duration;
        $course->module_count = $request->module_count;
        $course->save();

        if (CourseCentre::where('course_id', $id)->exists()) {
            CourseCentre::where('course_id', $id)->delete();
        }

        foreach ($request->centre_name as $centreName) {
            $centre = new CourseCentre();
            $centre->course_id = $course->id;
            $centre->centre_id = $centreName;
            $centre->save();
        }

        $coursePLaylist = CoursePlaylist::where('course_id', $id)->first();
        // $coursePLaylist->course_id = $course->id;
        if (empty($coursePLaylist)) {
            $coursePLaylist = new CoursePlaylist();
            $coursePLaylist->course_id = $course->id;
        }
        if ($request->hasFile('cover_image')) {
            $coverImageName = time() . '.' . $request->cover_image->extension();

            $request->cover_image->move(public_path('/course/images'), $coverImageName);
            $coursePLaylist->cover_photo = $coverImageName;
        }
        if ($request->hasFile('main_image')) {
            $imageName = time() . '.' . $request->main_image->extension();

            $request->main_image->move(public_path('/course/images'), $imageName);
            $coursePLaylist->image_url = $imageName;
        }
        if ($request->hasFile('prelude_video_link')) {
            $videoName = time() . '.' . $request->prelude_video_link->extension();

            $request->prelude_video_link->move(public_path('/course/videos'), $videoName);
            $coursePLaylist->prelude_video_link = $videoName;
        }
        if ($request->hasFile('main_video_link')) {
            $videoName = time() . '.' . $request->main_video_link->extension();

            $request->main_video_link->move(public_path('/course/videos'), $videoName);
            $coursePLaylist->video_url = $videoName;
        }
        $coursePLaylist->youtube_url = $request->youtube_url;
        $coursePLaylist->url_1 = $request->url_1;
        $coursePLaylist->url_2 = $request->url_2;
        $coursePLaylist->url_3 = $request->url_3;
        $coursePLaylist->save();

        return redirect()->route('admin.course.index')->with('success', 'Course updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function studyMaterials($id)
    {
        $course = Course::find($id);
        $studyMaterials = CourseStudyMaterial::where('course_id', $id)->paginate(10);

        return view('admin.pages.course.study-materials.index', compact('course', 'studyMaterials'));
    }

    public function studyMaterialsStore(Request $request)
    {
        $material = new CourseStudyMaterial();
        $material->course_id = $request->course_id;
        $material->title = $request->title;
        $material->description = $request->description;
        $material->is_free = $request->is_free;
        $material->status = $request->status;
        if ($request->hasFile('file')) {
            $fileName = time() . '.' . $request->file->extension();
            $request->file->move(public_path('uploads/study-materials'), $fileName);
            $material->file = $fileName;
        }
        $material->save();

        return redirect()->back()->with('success', 'Study material added successfully');
    }

    public function studyMaterialsUpdate(Request $request)
    {
        $material = CourseStudyMaterial::find($request->material_id);
        $material->title = $request->title;
        $material->description = $request->description;
        $material->is_free = $request->is_free;
        $material->status = $request->status;
        if ($request->hasFile('file')) {
            $fileName = time() . '.' . $request->file->extension();
            $request->file->move(public_path('uploads/study-materials'), $fileName);
            $material->file = $fileName;
        }
        $material->save();

        return redirect()->back()->with('success', 'Study material updated successfully');
    }
    public function studyMaterialsDelete($id)
    {
        $material = CourseStudyMaterial::find($id);
        $material->delete();
        return redirect()->back()->with('success', 'Study material deleted successfully');
    }
    public function getBatches(Request $request)
    {
        $courseId = $request->course_id;
        $batches = Batch::where('course_id', $courseId)->where('status', 1)->get();

        return response()->json(['batches' => $batches]);
    }
}
