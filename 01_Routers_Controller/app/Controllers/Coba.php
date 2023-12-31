<?php

namespace App\Controllers;

class Coba extends BaseController
{
    public function index()
    {
        echo 'ini controller coba method index';
    }

    public function about($nama = '', $umur = 21)
    {
        echo 'ini controller coba method about' . '<br>';
        echo "nama saya $this->nama" . '<br>';
        echo "nama saya $nama , umur saya $umur tahun";
    }
}
