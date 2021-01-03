<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
        <div class="card shadow p-4">
            <h1 class="mb-3"><strong>Dashboard</strong></h1>
            <?php if ($this->session->flashdata('notif_perintah') && $this->session->flashdata('notif_pesan')) { ?>
                <div class="alert alert-info" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h3 class="alert-heading"><?= $this->session->flashdata('notif_perintah'); ?>!</h3>
                    <hr />
                    <p><?= $this->session->flashdata('notif_pesan'); ?>.</p>
                </div>
            <?php } ?>
            <div class="card shadow pb-5">
                <div class="d-flex justify-content-center mb-3">
                    <img src="<?= base_url('assets/img/sekolah/') . $logo_sekolah ?>" style="width: 250px; height: 250px;" class="mt-3">
                </div>
                <div class="d-flex justify-content-center">
                    <h2><?= $nama_sekolah ?></h2>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-5 card-body shadow">
                        <p>Visi</p>
                        <p class="text-justify">
                            Unggul dalam bidang akademik dan non-akademik, beriman, berbudaya, dan berbudi pekerti luhur dalam perilaku.
                        </p>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-5 card-body shadow">
                        <p>Misi</p>
                        <ol class="text-justify ml-n3">
                            <li>Mewujudkan prestasi sekolah dibidang akademik dan non-akademik.</li>
                            <li>Mewujudkan pembelajaran paikem, inovatif, dan konstektual.</li>
                            <li>Mewujudkan sumber daya pendidik dan kependidikan yang profesional.</li>
                            <li>Mewujudkan kemampuan guru, pegawai, dan siswa dalam penggunaan bahasa asing (Bahasa Inggris dan Arab).</li>
                            <li>Mewujudkan sarana dan prasarana yang lengkap dan memadai.</li>
                            <li>Mewujudkan standar biaya yang memadai dan terpenuhi.</li>
                            <li>Mewujudkan sistem penilaian yang berkualitas dan akurat.</li>
                            <li>Membiasakan warga sekolah untuk melaksanakan 5S (Senyum, Salam, Sapa, Sopan, dan Santun).</li>
                            <li>Menciptakan suasana sekolah yang harmonis berdasarkan kedisplinan, partisipasi, tanggung jawab, kebersamaan, kejujuran, kekeluargaan, dan semangat.</li>
                            <li>Menanamkan sikap saling menghormati antar warga sekolah.</li>
                            <li>Membiasakan warga sekolah untuk menjaga kebersihan lingkungan untuk mendukung program clean and green.</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Container fluid  -->
    <!-- ============================================================== -->