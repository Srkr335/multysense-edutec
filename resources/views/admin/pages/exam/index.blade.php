@extends('admin.layouts.admin_app')

@section('content')
<div class="container-fluid">
    <div class="row">

        <div class="col-md-12">
            <div class="settings-inner-blk p-0">
                <div class="sell-course-head comman-space d-flex justify-content-between align-items-center">
                    <h3>Exams</h3>
                    <div class="go-dashboard text-center">
                        <a href="{{ route('exam.create') }}" class="btn btn-primary">Add Exam</a>
                    </div>
                </div>

                <div class="card">
                    <div class="card-body comman-space pb-0">
                        <div class="settings-tickets-blk course-instruct-blk table-responsive">
                            <table class="table table-nowrap mb-2">
                                <thead>
                                    <tr>
                                        <th>Sl.No</th>
                                        <th>Exam</th>
                                        <th>Marks</th>
                                        <th>Batch</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $n = 0; @endphp
                                    @foreach ($exams as $exam)
                                        @php $n++; @endphp
                                        <tr>
                                            <td>{{ $n }}</td>
                                            <td>{{ $exam->exam_name }}</td>
                                            <td>{{ $exam->marks }}</td>
                                            <td>{{ $exam->batch_id ? $exam->batch->name : '' }}</td>
                                            <td>
                                                {{ $exam->exam_date ? date('d-m-Y', strtotime($exam->exam_date)) : '' }}
                                            </td>
                                            <td>
                                                @if ($exam->status == 1)
                                                    <span class="badge info-low">Enabled</span>
                                                @else
                                                    <span class="badge info-inter">Disabled</span>
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                <div class="d-flex justify-content-center gap-2">
                                                    <a href="{{ route('exam.edit', $exam->id) }}" 
                                                       class="btn btn-sm btn-info text-white">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </a>
                                                    <button type="button" 
                                                            class="btn btn-sm btn-danger text-white"
                                                            onclick="confirmDelete({{ $exam->id }})">
                                                        <i class="fas fa-trash-alt"></i> Delete
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach

                                    @if ($exams->count() == 0)
                                        <tr>
                                            <td colspan="7" class="text-center">No Data Found</td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="card-footer">
                        <div class="row">
                            <div class="col-md-6 text-right">
                                {{ $exams->links() }}
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>

<!-- Delete Confirmation Modal -->
<div class="modal fade" id="confirmDeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true" style="display: none;">
    <div class="modal-dialog" role="document" style="max-width: 400px; margin: 100px auto; border-radius: 10px;">
        <div class="modal-content" style="border-radius: 10px; overflow: hidden;">
            <div class="modal-header"
                 style="background-color: #f04747; color: #fff; padding: 12px 20px; display: flex; justify-content: space-between; align-items: center;">
                <h5 class="modal-title" id="exampleModalLabel" style="margin: 0;">Confirm Delete</h5>
                <button type="button" onclick="closeModal()" 
                        style="background: none; border: none; color: #fff; font-size: 20px; cursor: pointer;">&times;</button>
            </div>
            <div class="modal-body" style="padding: 20px; font-size: 15px;">
                Are you sure you want to delete this item?
            </div>
            <div class="modal-footer" style="padding: 10px 20px; text-align: right;">
                <button type="button" onclick="closeModal()"
                        style="background-color: #6c757d; color: #fff; padding: 8px 14px; border: none; border-radius: 6px; font-weight: 600; margin-right: 8px; cursor: pointer;">
                    Cancel
                </button>
                <form id="deleteForm" method="POST" action="{{ route('admin.exam.delete') }}" style="display: inline;">
                    @csrf
                    <input type="hidden" name="exam_id" id="exam_id">
                    <button type="submit"
                            style="background-color: #dc3545; color: #fff; padding: 8px 14px; border: none; border-radius: 6px; font-weight: 600; cursor: pointer;">
                        Delete
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    // ✅ Open modal manually
    function confirmDelete(id) {
        document.getElementById('exam_id').value = id;
        document.getElementById('confirmDeleteModal').style.display = 'block';
        document.getElementById('confirmDeleteModal').classList.add('show');
        document.body.style.overflow = 'hidden';
    }

    // ✅ Close modal manually
    function closeModal() {
        const modal = document.getElementById('confirmDeleteModal');
        modal.style.display = 'none';
        modal.classList.remove('show');
        document.body.style.overflow = 'auto';
    }
</script>
@endsection
