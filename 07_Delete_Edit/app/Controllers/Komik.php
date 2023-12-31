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
        // input dikirim lewat session dari method save

        // session(); ----> awalnya ditulis disini, alangkah baiknya ditulis di base controller

        $data = [
            'judul' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];



        return view('komik/create', $data);
    }

    public function save()
    {
        // validasi input

        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar.'
                ]
            ]
        ])) {
            // pesan kesalahan
            $validation = \Config\Services::validation();


            // meskipun gk usa with('validation')......  ---> tetap terkirim ke method create pesan kesalahannya
            return redirect()->to('/ko')->withInput()->with('validation', $validation);
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);

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

    public function delete($id)
    {
        // bisa dengan cara biasa, tetapi lebih baik dgn teknik 'http method spoving'
        // diruah pada views-nya

        $this->komikModel->delete($id);

        session()->setFlashdata('Pesan', 'Data berhasil dihapus.');

        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'judul' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];



        return view('komik/edit', $data);
    }

    public function update($id)
    {
        // cek judul 
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));

        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }



        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} komik harus diisi.',
                    'is_unique' => '{field} komik sudah terdaftar.'
                ]
            ]
        ])) {
            // pesan kesalahan
            $validation = \Config\Services::validation();

            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
        }


        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $this->request->getVar('sampul')
        ]);

        // Flash Message
        session()->setFlashdata('Pesan', 'Data berhasil diubah.');

        return redirect()->to('/komik');
    }
}
