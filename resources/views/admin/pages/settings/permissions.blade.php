@extends('admin.layouts.admin_app')

@section('content')
<div class="container">
    <div class="settings-inner-blk p-0 border rounded">
    
        <div class="widget-setcount widget-btn mb-0  bg-light d-flex justify-content-between align-items-center ">
            <h4>Roles & Permissions</h4>
            <a href="{{route('settings.permissions.create')}}" class="btn btn-info-light">Create</a>
    </div>
     
        <div class="comman-space pb-0">
            <div class="">
                <div class="show-filter all-select-blk">
                    <form action="#">
                        <div class="row gx-2 align-items-center">
                            <div class="col-md-6 col-lg-3 col-item">
                                <div class=" search-group mb-3">
                                    <i class="feather-search"></i>
                                    <input type="text" class="form-control" placeholder="Search our courses">
                                </div>
                            </div>
                           
                        </div>
                    </form>
                </div>
            </div>
            <div class="settings-referral-blk course-instruct-blk  table-responsive">
    
                <table class="table table-nowrap mb-0">
                    <thead>
                        <tr>
                            
                            <th>#</th>
                            <th>ROLES</th>
                            <th>ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                           
                            <td>1</td>
                            <td>Devoloper</td>
                            <td>
                                <div class="actionBtn">
                                    <span class="more">
                                        <button type="button" onclick="showDropdown()"> <i
                                                class="feather-more-vertical" id="showDropdown"></i></button>
                                    </span>
                                    <ul class="more-details hidden" id="more-details">
                                        <li> <a href="{{route('settings.permissions.edit')}}">Edit</a></li>
                                        <li> <a href="">Delete</a></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                           
                            <td>1</td>
                            <td>Devoloper</td>
                            <td>
                                <div class="actionBtn">
                                    <span class="more">
                                        <button type="button" onclick="showDropdown()"> <i
                                                class="feather-more-vertical" id="showDropdown"></i></button>
                                    </span>
                                    <ul class="more-details hidden" id="more-details">
                                        <li> <a href="">Top Rated</a></li>
                                        <li> <a href="">Trending</a></li>
                                        <li> <a href="">Most Purchased</a></li>
                                        <li> <a href="">Newly Added</a></li>
                                        <li> <a href="">Free</a></li>
                                        <li> <a href="">Handpicked</a></li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                       
                    </tbody>
                </table>
    
            </div>
        </div>
    </div>
</div>

    @push('scripts')
        <script>
           
            const list = document.querySelector('.more-details');
            const btn = document.querySelector('#showDropdown');

            btn.addEventListener('click', (e) => {

                list.classList.toggle('hidden')
                e.stopPropagation()
            })

            document.addEventListener('click', (e) => {
                if (e.target.closest('.more-details')) return

                list.classList.add('hidden')
            })
   
        </script>
    @endpush
@endsection
