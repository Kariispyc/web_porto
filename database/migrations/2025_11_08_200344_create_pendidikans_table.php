<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pendidikans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('biodata_id')->constrained('biodatas')->onDelete('cascade');
            $table->string('nama_sekolah');
            $table->string('jenjang')->nullable();
            $table->string('jurusan')->nullable();
            $table->year('tahun_masuk')->nullable();
            $table->year('tahun_lulus')->nullable();
            $table->text('keterangan')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pendidikans');
    }
};
