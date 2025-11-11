<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Skill extends Model
{
    use HasFactory;

    protected $table = 'skills';

    protected $fillable = [
        'biodata_id',
        'nama_skill',
        'foto_skill',
        'tingkat',
    ];

    public function biodata()
    {
        return $this->belongsTo(Biodata::class);
    }
}
