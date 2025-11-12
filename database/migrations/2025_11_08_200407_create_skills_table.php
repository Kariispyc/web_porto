<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('skills', function (Blueprint $table) {
            $table->id();
            $table->foreignId('biodata_id')->constrained('biodatas')->onDelete('cascade');
            $table->string('nama_skill');
            $table->string('foto_skill')->nullable();
            $table->enum('sumber_skill', ['storage', 'public'])->default('public');
            $table->string('tingkat')->nullable(); // contoh: Beginner, Intermediate, Expert
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('skills');
    }
};