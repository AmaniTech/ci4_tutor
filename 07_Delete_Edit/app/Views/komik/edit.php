<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Ubah Data Komik</h2>



            <form action="/komik/update/<?= $komik['id']; ?>" method="post">

                <?= csrf_field(); ?>

                <input type="hidden" name="slug" id="slug" value="<?= $komik['slug']; ?>">

                <div class="row align-items-center">
                    <div class="col-auto ">
                        <label for="judul" class="col-form-label">Judul</label>
                    </div>
                    <div class="col-auto">

                        <input type="text" id="judul" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" name="judul" autofocus value="<?= (old('judul')) ? old('judul') : $komik['judul']; ?>">

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
                        <input type="text" id="penulis" class="form-control" name="penulis" value="<?= (old('penulis')) ? old('penulis') : $komik['penulis']; ?>">
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
                        <input type="text" id="penerbit" class="form-control" name="penerbit" value="<?= (old('penerbit')) ? old('penerbit') : $komik['penerbit']; ?>">
                    </div>

                    <!-- ------------------ -->
                    <div class="col-0">
                        <br>
                    </div>
                    <!-- ------------------ -->

                    <div class="col-auto">
                        <label for="sampul" class="col-form-label">Sampul</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="sampul" class="form-control" name="sampul" value="<?= (old('sampul')) ? old('sampul') : $komik['sampul']; ?>">
                    </div>

                    <!-- ------------------ -->
                    <div class="col-0">
                        <br>
                    </div>
                    <!-- ------------------ -->

                    <div class="col-sm-5">
                        <button class="btn btn-primary">Ubah Data</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>


<?= $this->endSection(); ?>