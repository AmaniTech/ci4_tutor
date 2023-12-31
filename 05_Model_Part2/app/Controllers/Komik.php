<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{

    protected $komikModel;

    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    public function index()
    {

        // $komik = $this->komikModel->findAll(); -->gk usa, karena sudah dibuat di models


        $data = [
            'judul' => 'Daftar Komik',
            'komik' => $this->komikModel->getKomik(0)
        ];


        // var_dump($data['komik']['sampul']);
        return view('komik/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'judul' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        // jika komik tidak ada di tabel 
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik : ' . $slug . ' --> tidak ditemukan');
        }


        return view('komik/detail', $data);
    }

    public function create()
    {
        $data = [
            'judul' => 'Form Tambah Data Komik'
        ];

        return view('komik/create', $data);
    }

    public function save()
    {
        $slug = url_title($this->request->getVar('judul'), '-', true); // mengubah string menjadi huruf kecil & spasi menjadi tanda (" - ")

        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        // Flash Message
        session()->setFlashdata('Pesan', 'Data berhasil ditambahkan.');

        return redirect()->to('/komik');
    }
}
