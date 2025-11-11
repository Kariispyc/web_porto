<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Portofolio extends Model
{
    use HasFactory;

    protected $table = 'portofolios';

    protected $fillable = [
        'biodata_id',
        'nama_project',
        'tahun',
        'posisi',
        'gambar_project',
        'deskripsi',
    ];

    public function biodata()
    {
        return $this->belongsTo(Biodata::class);
    }
}
