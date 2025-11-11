<?php

namespace App\Http\Controllers;

use App\Models\Biodata;
use Illuminate\Http\Request;

class CVController extends Controller
{
    public function index()
    {
        // Menggunakan orderBy('id', 'desc') agar lebih pasti
        $biodatas = Biodata::with([
            'pendidikans' => function ($query) {
                $query->orderBy('id', 'desc');
            },
            'pengalamans' => function ($query) {
                $query->orderBy('id', 'desc');
            },
            'skills' => function ($query) {
                $query->orderBy('id', 'desc');
            },
            'portofolios' => function ($query) {
                $query->orderBy('id', 'desc');
            },
            'certificates' => function ($query) {
                $query->orderBy('id', 'desc');
            }
        ])->first(); // <- 'first()' ini tetap, tidak diubah

        return view('cv.index', compact('biodatas'));
    }
}