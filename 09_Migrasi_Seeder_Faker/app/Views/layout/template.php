<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assest/css/style.css">
    <title><?= $judul; ?></title>
    <link rel="stylesheet" href="<?= base_url(); ?>/assest/css/bootstrap.min.css">
</head>

<body>

    <!-- ================================= -->
    <?= $this->include('layout/navbar'); ?>
    <!-- ================================= -->


    <!-- ================================= -->
    <?= $this->renderSection('content'); ?>
    <!-- ================================= -->

    <script src="<?= base_url(); ?>/assest/js/bootstrap.bundle.min.js"></script>
    <script>
        function previewImg() {

            const sampul = document.querySelector('sampul');
            const imgPreview = document.querySelector('.img-preview');

            console.log(sampul);

            // belum selesai
        }
    </script>
</body>

</html>