<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('biodatas', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->date('tanggal_lahir')->nullable();
            $table->string('alamat')->nullable();
            $table->string('email')->nullable();
            $table->string('no_hp')->nullable();
            $table->text('deskripsi')->nullable();
            $table->string('foto_diri')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('biodatas');
    }
};
