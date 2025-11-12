<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('portofolios', function (Blueprint $table) {
            $table->id();
            $table->foreignId('biodata_id')->constrained('biodatas')->onDelete('cascade');
            $table->string('nama_project');
            $table->year('tahun')->nullable();
            $table->string('posisi')->nullable();
            $table->string('gambar_project')->nullable();
            $table->enum('foto_project', ['storage', 'public'])->default('public');
            $table->enum('tipe_konten', ['gambar', 'youtube', 'reels'])->default('gambar');
            $table->string('link_project')->nullable();
            $table->text('deskripsi')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('portofolios');
    }
};