<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pendidikan extends Model
{
    use HasFactory;

    protected $table = 'pendidikans';

    protected $fillable = [
        'biodata_id',
        'nama_sekolah',
        'jenjang',
        'tahun_masuk',
        'tahun_lulus',
        'jurusan',
        'keterangan',
    ];

    public function biodata()
    {
        return $this->belongsTo(Biodata::class);
    }
}
