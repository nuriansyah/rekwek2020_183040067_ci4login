<?php

namespace App\Controllers;

use App\Models\ComicsModel;
use CodeIgniter\Validation\Rules;

class Comics extends BaseController
{
    protected $comicsModel;
    public function __construct()
    {
        $this->comicsModel = new ComicsModel();
    }

    public function index()
    {
        // $comics = $this->comicsModel->findAll();
        $data = [
            'title' => 'Comics',
            'comics' => $this->comicsModel->getComics()
        ];

        // $ComicsModel
        //$comicsModel = new ComicsModel();


        return view('comics/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Comics',
            'comics' => $this->comicsModel->getComics($slug)
        ];

        if (empty($data['comics'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul comics' . $slug . 'tidak ditemukan');
        }

        return view('comics/detail', $data);
    }

    public function create()
    {
        //session();
        $data = [
            'title' => 'Form Tambah Data Comics',
            'validation' => \Config\Services::validation()
        ];

        return view('comics/create', $data);
    }


    public function save()
    {
        //validation

        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[comics.judul]',
                'errors' => [
                    'required' => '{field} Comics harus diisi',
                    'is_unique' => '{field Comics sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'ukuran gambar terlalu besar',
                    'is_image' => 'Yang ada pilih bukan gambar',
                    'mime_in' => 'Yang ada pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/comics/create')->withInput()->with('validation', $validation);
            return redirect()->to('/comics/create')->withInput();
        }

        //getIMG
        $fileSampul = $this->request->getFile('sampul');

        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.jpg';
        } else {
            $namaSampul = $fileSampul->getRandomName();
            //move to img
            $fileSampul->move('img', $namaSampul);
        }



        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->comicsModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil Ditambahkan');

        return redirect()->to('/comics');
    }

    public function delete($id)
    {
        //search image

        $comics = $this->comicsModel->find($id);

        //check img
        if ($comics['sampul'] != 'default.jog') {
            //deleted on image
            unlink('img/' . $comics['sampul']);
        }



        $this->comicsModel->delete($id);
        session()->setFlashdata('pesan', 'Data Berhasil Dihapus');
        return redirect()->to('/comics');
    }
    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah Data Comics',
            'validation' => \Config\Services::validation(),
            'comics' => $this->comicsModel->getComics($slug)
        ];

        return view('comics/edit', $data);
    }

    public function update($id)
    {
        $comicsLama = $this->comicsModel->getComics($this->request->getVar('slug'));
        if ($comicsLama['judul'] == $this->request->getVar('judul')) {
            $rule_Judul = 'required';
        } else {
            $rule_Judul = 'required|is_unique[comics.judul]';
        }
        if (!$this->validate([
            'judul' => [
                'rules' => $rule_Judul,
                'errors' => [
                    'required' => '{field} Comics harus diisi',
                    'is_unique' => '{field Comics sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'ukuran gambar terlalu besar',
                    'is_image' => 'Yang ada pilih bukan gambar',
                    'mime_in' => 'Yang ada pilih bukan gambar'
                ]
            ]
        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/comics/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
            return redirect()->to('/comics/create')->withInput();
        }

        $fileSampul = $this->request->getFile('sampul');

        //cek gambar
        if (!$fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            $namaSampul = $fileSampul->getRandomName();

            $fileSampul->move('img', $namaSampul);

            unlink('img/' . $this->request->getVar('sampulLama'));
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->comicsModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil DiUbah');

        return redirect()->to('/comics');
    }
    //--------------------------------------------------------------------

}
