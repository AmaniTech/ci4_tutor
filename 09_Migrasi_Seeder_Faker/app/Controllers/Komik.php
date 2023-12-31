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
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar.',
                    'is_image' => 'yang anda pilih bukan gambar.',
                    'mime_in' => 'yang anda pilih bukan gambar.'
                ]
            ]
        ])) {
            // pesan kesalahan
            // $validation = \Config\Services::validation(); ---> validation --> gak usa karena sudah ada di session


            return redirect()->to('/ko')->withInput();
        }


        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');

        // cek apakah tidak ada gambar yang diupload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            // generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();

            // pindahkahkan file ke folder 'img'
            $fileSampul->move('assest/img', $namaSampul);
        }





        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        // Flash Message
        session()->setFlashdata('Pesan', 'Data berhasil ditambahkan.');

        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        // cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);

        // cek jika file gambarnya default
        if ($komik['sampul'] != 'default.jpg') {
            // hapus gambar
            unlink('assest/img/' . $komik['sampul']);
        }



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
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar.',
                    'is_image' => 'yang anda pilih bukan gambar.',
                    'mime_in' => 'yang anda pilih bukan gambar.'
                ]
            ]
        ])) {

            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileSampul = $this->request->getFile('sampul');

        // cek gambar, apakah tetap gambar lama
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // generate nama file random
            $namaSampul = $fileSampul->getRandomName();

            // pindahkan gambar
            $fileSampul->move('assest/img', $namaSampul);

            // hapus file lama
            unlink('assest/img' . $this->request->getVar('sampulLama'));
        }


        $slug = url_title($this->request->getVar('judul'), '-', true);

        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        // Flash Message
        session()->setFlashdata('Pesan', 'Data berhasil diubah.');

        return redirect()->to('/komik');
    }
}
