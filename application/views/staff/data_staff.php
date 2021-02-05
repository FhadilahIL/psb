<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <div class="card shadow p-4">
            <h1><strong>Data Staff</strong></h1>
            <div class="mb-3 mt-3">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
                    <i class="fas fa-plus"></i> Tambah Staff
                </button>

                <!-- Modal Tambah Penilaian -->
                <div class="modal fade" id="staticBackdrop" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Tambah Data Staff</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="<?= base_url('c_user/tambah_staff') ?>" method="post">
                                    <div class="form-group">
                                        <label>Nama Staff</label>
                                        <input type="text" class="form-control" name="nama_staff" />
                                    </div>
                                    <div class="form-group">
                                        <label>Email Staff</label>
                                        <input type="email" class="form-control" id="email_staff" name="email_staff" />
                                        <small class="" id="notify"></small>
                                    </div>
                                    <div class="form-group">
                                        <button type="button" id="cek" class="btn btn-warning tex-light">Cek</button>
                                    </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-sign-out-alt fa-flip-horizontal"></i> Close</button>
                                <button type="submit" id="simpan_data" class="btn btn-success" disabled><i class="fas fa-check"></i>Simpan Data</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <table id="datatable" class="table table-responsive">
                <thead class="bg-dark text-light">
                    <th class="text-center" style="width: 30px;">No</th>
                    <th class="text-center" style="min-width: 362px;">Nama Staff</th>
                    <th style="min-width: 362px;">Email</th>
                    <th class="text-center" style="min-width: 50px;">Aksi</th>
                </thead>
                <tbody id="data_nilai">
                    <?php $no = 1;
                    foreach ($data_staff as $staff) { ?>
                        <tr>
                            <td><?= $no++ ?>.</td>
                            <td><?= $staff->nama_staff ?></td>
                            <td><?= $staff->email_staff ?></td>

                            <td class="text-center">
                                <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#staticBackdropDetail<?= $staff->id_staff ?>">
                                    <i class="fas fa-info fa-fw"></i>
                                </button>
                            </td>
                        </tr>
                        <!-- Modal Edit Tahun Ajaran -->
                        <div class="modal fade" id="staticBackdropDetail<?= $staff->id_staff ?>" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Detail Data <b><?= $staff->nama_staff ?></b></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row mb-3">
                                            <div class="col-3">Nama</div>
                                            <div class="col-9"><?= $staff->nama_staff ?></div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="col-3">Email</div>
                                            <div class="col-9"><?= $staff->email_staff ?></div>
                                        </div>
                                        <div class="row">
                                            <div class="col-3">Foto</div>
                                            <div class="col-9">
                                                <img src="<?= base_url('/assets/img/profile/') . $staff->foto ?>" class="w-50" alt="Foto Staff" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fas fa-sign-out-alt fa-flip-horizontal"></i> Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->