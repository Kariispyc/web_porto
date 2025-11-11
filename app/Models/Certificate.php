<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Certificate extends Model
{
    use HasFactory;

    protected $table = 'certificates';

    protected $fillable = [
        'biodata_id',
        'nama_penghargaan',
        'pemberi_sertifikat',
        'capaian',
        'tahun',
    ];

    public function biodata()
    {
        return $this->belongsTo(Biodata::class);
    }
}
