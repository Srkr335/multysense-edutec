@extends('admin.layouts.admin_app')

@section('content')
<div class="container-fluid" style="padding: 20px; background-color: #f8f9fa;">
    <div class="row">
        <div class="col-md-12">
            <div style="background-color: #ffffff; border-radius: 10px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); padding: 20px;">

                <!-- Header Section -->
                <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px;">
                    <h3 style="font-weight: 700; color: #2c3e50; margin: 0;">Centres Management</h3>
                    <a href="{{ route('centre.create') }}"
                        style="background-color: #007bff; color: #fff; padding: 10px 18px; border-radius: 6px; text-decoration: none; font-weight: 600; transition: background 0.3s;">
                        Add Centre
                    </a>
                </div>

                <!-- Table Section -->
                <div style="overflow-x:auto;">
                    <table style="width: 100%; border-collapse: collapse; font-size: 15px;">
                        <thead>
                            <tr style="background-color: #F04747; color: #fff; text-align: left;">
                                <th style="padding: 12px;">Sl.No</th>
                                <th style="padding: 12px;">Name</th>
                                <th style="padding: 12px;">Address</th>
                                <th style="padding: 12px;">Mobile</th>
                                <th style="padding: 12px;">Website</th>
                                <th style="padding: 12px;">Status</th>
                                <th style="padding: 12px; text-align: center;">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($centers as $index => $center)
                            <tr style="border-bottom: 1px solid #ddd; background-color: {{ $index % 2 == 0 ? '#f9f9f9' : '#ffffff' }};">
                                <td style="padding: 10px;">{{ $index + 1 }}</td>
                                <td style="padding: 10px; font-weight: 600;">{{ $center->name }}</td>
                                <td style="padding: 10px;">{{ $center->address }}</td>
                                <td style="padding: 10px;">{{ $center->mobile }}</td>
                                <td style="padding: 10px;">
                                    <a href="{{ $center->website }}" target="_blank" style="color: #007bff; text-decoration: none;">
                                        {{ $center->website }}
                                    </a>
                                </td>
                                <td style="padding: 10px;">
                                    @if ($center->status == 1)
                                        <span style="background-color: #28a745; color: white; padding: 5px 10px; border-radius: 5px;">Enabled</span>
                                    @else
                                        <span style="background-color: #dc3545; color: white; padding: 5px 10px; border-radius: 5px;">Disabled</span>
                                    @endif
                                </td>
                                <td style="padding: 10px; text-align: center; white-space: nowrap;">
                                    <div style="display: inline-flex; align-items: center; gap: 8px;">
                                        <a href="{{ route('centre.edit', $center->id) }}"
                                            style="background-color: #17a2b8; color: #fff; padding: 6px 14px; border-radius: 5px; 
                                                text-decoration: none; font-weight: 600; transition: 0.2s;">
                                            Edit
                                        </a>

                                        <button type="button" onclick="confirmDelete({{ $center->id }})"
                                            style="background-color: #dc3545; color: #fff; padding: 6px 14px; border-radius: 5px; 
                                                border: none; font-weight: 600; cursor: pointer; transition: 0.2s;">
                                            Delete
                                        </button>
                                    </div>
                                </td>
                            </tr>
                            @empty
                            <tr>
                                <td colspan="7" style="text-align:center; padding: 20px; color: #6c757d;">No Data Found</td>
                            </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                <!-- Pagination -->
                <div style="margin-top: 20px; text-align: right;">
                    {{ $centers->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Delete Confirmation Modal -->
<div id="confirmDeleteModal"
    style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; 
           background: rgba(0,0,0,0.5); z-index: 1050; justify-content: center; align-items: center;">
    <div style="background: #fff; width: 400px; border-radius: 10px; overflow: hidden; box-shadow: 0 2px 8px rgba(0,0,0,0.3);">
        <div style="background-color: #dc3545; color: #fff; padding: 15px 20px;">
            <h5 style="margin: 0;">⚠️ Confirm Delete</h5>
        </div>
        <div style="padding: 20px; font-size: 16px; color: #333;">
            Are you sure you want to delete this centre? This action cannot be undone.
        </div>
        <div style="padding: 10px 20px; text-align: right; border-top: 1px solid #eee;">
            <button type="button" onclick="closeModal()"
                style="background-color: #6c757d; color: #fff; padding: 8px 14px; border: none; border-radius: 6px; font-weight: 600; margin-right: 8px; cursor: pointer;">
                Cancel
            </button>

            <form id="deleteForm" method="POST" style="display: inline;">
                @csrf
                @method('DELETE')
                <button type="submit"
                    style="background-color: #dc3545; color: #fff; padding: 8px 14px; border: none; border-radius: 6px; font-weight: 600; cursor: pointer;">
                    Delete
                </button>
            </form>
        </div>
    </div>
</div>

<script>
    function confirmDelete(id) {
        const form = document.getElementById('deleteForm');
        form.action = `/admin/centre/${id}`; // ✅ dynamically set the route
        document.getElementById('confirmDeleteModal').style.display = 'flex';
    }

    function closeModal() {
        document.getElementById('confirmDeleteModal').style.display = 'none';
    }
</script>

@endsection
