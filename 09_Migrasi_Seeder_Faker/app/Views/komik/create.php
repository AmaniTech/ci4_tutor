<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Tambah Data Komik</h2>



            <form action="/komik/save" method="post" enctype="multipart/form-data">

                <?= csrf_field(); ?>
                <!-- menghidari pemalsuan dari halaman lain (dikirim lewat halaman lain)-->

                <input type="hidden" name="sampulLama" value="<?= $komik['sampul']; ?>">
                <!-- -- -->

                <div class="row align-items-center">
                    <div class="col-auto ">
                        <label for="judul" class="col-form-label">Judul</label>
                    </div>
                    <div class="col-auto">

                        <input type="text" id="judul" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" name="judul" autofocus value="<?= old('judul'); ?>">

                        <div class="invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>

                    </div>


                    <!-- ------------------ -->
                    <div class="col-0">
                        <br>
                    </div>
                    <!-- ------------------ -->

                    <div class="col-auto">
                        <label for="penulis" class="col-form-label">Penulis</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="penulis" class="form-control" name="penulis" value="<?= old('penulis'); ?>">
                    </div>

                    <!-- ------------------ -->
                    <div class="col-0">
                        <br>
                    </div>
                    <!-- ------------------ -->

                    <div class="col-auto">
                        <label for="penerbit" class="col-form-label">Penerbit</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="penerbit" class="form-control" name="penerbit" value="<?= old('penerbit'); ?>">
                    </div>

                    <!-- ------------------ -->
                    <div class="col-0">
                        <br>
                    </div>
                    <!-- ------------------ -->

                    <div class="col-auto">
                        <label for="sampul" class="col-form-label">Sampul</label>

                        <div class="col-sm-10">
                            <div class="col-auto">

                                <input class="form-control <?= ($validation->hasError('sampul')) ? 'is-invalid' : ''; ?>" type="file" id="sampul" name="sampul" onchange="previewImg()">

                                <div class="invalid-feedback">
                                    <?= $validation->getError('sampul'); ?>
                                </div>

                            </div>
                        </div>

                        <div class="col-sm-2">
                            <img src="/assest/img/default.jpg" class="img-thumbnail img-preview">
                        </div>


                        <!-- ------------------ -->
                        <div class="col-0">
                            <br>
                        </div>
                        <!-- ------------------ -->

                        <div class="col-sm-5">
                            <button class="btn btn-primary">Tambah Data</button>
                        </div>

                    </div>
            </form>
        </div>
    </div>
</div>


<?= $this->endSection(); ?>