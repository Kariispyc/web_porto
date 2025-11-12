<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pengalamans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('biodata_id')->constrained('biodatas')->onDelete('cascade');
            $table->string('jenis_pengalaman')->nullable();
            $table->string('nama_perusahaan');
            $table->string('posisi')->nullable();
            $table->year('tahun_mulai')->nullable();
            $table->year('tahun_selesai')->nullable();
            $table->string('bulan', 25)->nullable();
            $table->text('deskripsi')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pengalamans');
    }
};