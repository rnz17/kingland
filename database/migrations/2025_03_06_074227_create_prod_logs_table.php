<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('prod_logs', function (Blueprint $table) {
            $table->id();
            $table->string('product_code'); // Store product_code instead of product_id
            $table->enum('action', ['add', 'edit', 'delete']); // Enum for action type
            $table->json('old_values')->nullable(); // Stores previous values
            $table->json('new_values')->nullable(); // Stores new values
            $table->unsignedBigInteger('user_id')->nullable(); // User who performed the action
            $table->foreign('user_id')->references('id')->on('users')->onDelete('set null'); // Reference users table
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('prod_logs');
    }
};
