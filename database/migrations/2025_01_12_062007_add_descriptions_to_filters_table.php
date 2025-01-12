<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table('filters', function (Blueprint $table) {
            $table->string('descriptions')->nullable(); // You can make it nullable if necessary
        });
    }

    public function down()
    {
        Schema::table('filters', function (Blueprint $table) {
            $table->dropColumn('descriptions'); // Rollback action
        });
    }

};
