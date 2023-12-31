<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {

        $data = [
            'judul' => 'Home | Qom Project',
            'tes' => ['awda', 'dwadw', '123']
        ];

        return view('pages/home', $data);
    }
    public function about()
    {
        $data = [
            'judul' => 'About Me | Qom Project'
        ];

        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'judul' => 'Contact | Qom Project',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl. Gejugjati No. 29',
                    'kecamatan' => 'Lekok'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl. Rejoso No. 123',
                    'kecamatan' => 'Rejoso'
                ]
            ]
        ];

        return view('pages/contact', $data);
    }
}
