<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Biodata extends Model
{
    use HasFactory;

    protected $table = 'biodatas';

    protected $fillable = [
        'nama',
        'tanggal_lahir',
        'alamat',
        'email',
        'no_hp',
        'deskripsi',
        'foto_diri',
    ];

    // Relasi ke pendidikan
    public function pendidikans()
    {
        return $this->hasMany(Pendidikan::class);
    }

    // Relasi ke pengalaman
    public function pengalamans()
    {
        return $this->hasMany(Pengalaman::class)->latest();
    }

    // Relasi ke skill
    public function skills()
    {
        return $this->hasMany(Skill::class)->latest();
    }

    // Relasi ke portofolio
    public function portofolios()
    {
        return $this->hasMany(Portofolio::class)->latest();
    }

    // Relasi ke certificate
    public function certificates()
    {
        return $this->hasMany(Certificate::class)->latest();
    }
}
