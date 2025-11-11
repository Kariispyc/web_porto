<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengalaman extends Model
{
    use HasFactory;

    protected $table = 'pengalamans';

    protected $fillable = [
        'biodata_id',
        'jenis_pengalaman',
        'nama_perusahaan',
        'posisi',
        'tahun_mulai',
        'tahun_selesai',
        'deskripsi',
    ];

    public function biodata()
    {
        return $this->belongsTo(Biodata::class);
    }
}
