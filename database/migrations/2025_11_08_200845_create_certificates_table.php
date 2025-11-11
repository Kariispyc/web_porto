<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('certificates', function (Blueprint $table) {
            $table->id();
            $table->foreignId('biodata_id')->constrained('biodatas')->onDelete('cascade');
            $table->string('nama_penghargaan');
            $table->string('pemberi_sertifikat')->nullable();
            $table->string('capaian')->nullable(); // contoh: Juara 1, Peserta, Finalis
            $table->year('tahun')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('certificates');
    }
};
