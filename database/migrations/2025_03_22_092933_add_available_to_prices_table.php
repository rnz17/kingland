<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration 
{
    public function up(): void
    {
        Schema::table('prices', function (Blueprint $table) {
            $table->boolean('available')->default(1)->after('id');
        });
    }

    public function down()
    {
        Schema::table('prices', function (Blueprint $table) {
            // Drop the hidden column if rolled back
            $table->dropColumn('available');
        });
    }
};
