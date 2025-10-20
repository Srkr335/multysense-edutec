<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Centre;
use App\Models\User;
use Spatie\Permission\Models\Role;

class CentreController extends Controller
{
    private $districtMap = [
        '01' => 'Thiruvananthapuram',
        '02' => 'Kollam',
        '03' => 'Pathanamthitta',
        '04' => 'Alappuzha',
        '05' => 'Kottayam',
        '06' => 'Idukki',
        '07' => 'Ernakulam',
        '08' => 'Thrissur',
        '09' => 'Palakkad',
        '10' => 'Malappuram',
        '11' => 'Kozhikode',
        '12' => 'Wayanad',
        '13' => 'Kannur',
        '14' => 'Kasaragod',
    ];

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $centers = Centre::orderBy('id', 'desc')->paginate(10);
        return view('admin.pages.centre.index', compact('centers'));
    }

    /**
     * Show the form for creating a new centre.
     */
    public function create()
    {
        $users = User::where('type', 1)->get();
        $roles = Role::pluck('id', 'name')->all();
        return view('admin.pages.centre.create', compact('users', 'roles'));
    }

    /**
     * Store a newly created centre and user.
     */
    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required|email|unique:users,email',
            'centre_name' => 'required|string|max:255',
        ]);

        // Create User
        $user = new User();
        $user->name = $request->centre_name;
        $user->email = $request->email;
        $user->mobile_no = $request->phone;
        $user->password = bcrypt($request->password);
        $user->type = 1;
        $user->save();

        // Auto generate centre number based on district
        $existingCount = Centre::where('district_no', $request->district)->count();
        $nextCentreNumber = str_pad($existingCount + 1, 2, '0', STR_PAD_LEFT);

        // Create Centre
        $centre = new Centre();
        $centre->name = $request->centre_name;
        $centre->address = $request->address;
        $centre->city = $request->city;
        $centre->district_no = $request->district;
        $centre->district = $this->districtMap[$request->district] ?? null;
        $centre->pincode = $request->zipcode;
        $centre->mobile = $request->phone;
        $centre->website = $request->website;
        $centre->admin = $request->centre_incharge;
        $centre->status = $request->status;
        $centre->centre_number = $nextCentreNumber;
        $centre->user_id = $user->id;
        $centre->save();

        $user->assignRole($request->input('role'));

        return redirect()->route('centre.index')->with('success', 'Centre created successfully.');
    }

    /**
     * Show the form for editing the centre.
     */
    public function edit($id)
    {
        $users = User::where('type', 1)->get();
        $centre = Centre::leftJoin('users', 'users.id', '=', 'centres.user_id')
            ->where('centres.id', $id)
            ->select('centres.*', 'users.id as users_id', 'users.email')
            ->first();

        return view('admin.pages.centre.edit', compact('centre', 'users'));
    } 

    /**
     * Update the specified centre and related user.
     */
    public function update(Request $request)
    {
        $centreId = $request->centre_id;
        $userId = $request->user_id;

        $centre = Centre::find($centreId);
        $user = User::find($userId);

        if ($centre && $user) {
            $centre->name = $request->centre_name;
            $centre->address = $request->address;
            $centre->city = $request->city;
            $centre->district_no = $request->district;
            $centre->district = $this->districtMap[$request->district] ?? null;
            $centre->pincode = $request->zipcode;
            $centre->mobile = $request->phone;
            $centre->website = $request->website;
            $centre->admin = $request->centre_incharge;
            $centre->status = $request->status;
            $centre->save();

            $user->name = $request->centre_name;
            $user->email = $request->email;
            $user->mobile_no = $request->phone;
            if ($request->filled('password')) {
                $user->password = bcrypt($request->password);
            }
            $user->type = 1;
            $user->save();
        }

        return redirect()->route('centre.index')->with('success', 'Centre updated successfully.');
    }

    /**
     * Remove the specified centre and user.
     */
   public function destroy($id)
{
    $centre = Centre::findOrFail($id);
    $centre->delete();

    return redirect()->route('centre.index')->with('success', 'Centre deleted successfully!');
}

}