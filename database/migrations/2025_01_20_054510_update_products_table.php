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
        Schema::table('products', function (Blueprint $table) {
        
            // Add the new service_id, category_id, and subcategory_id columns
            $table->unsignedBigInteger('service_id')->nullable();
            $table->unsignedBigInteger('category_id')->nullable();
            $table->unsignedBigInteger('subcategory_id')->nullable();

            // Add the foreign key constraints
            $table->foreign('service_id')->references('id')->on('services')->onDelete('set null');
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('set null');
            $table->foreign('subcategory_id')->references('id')->on('subcategories')->onDelete('set null');
        });
    }

    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            // Re-add the category column (optional if you want to revert)
            $table->string('category')->nullable();
    
            // Drop the foreign key and the service_id column
            $table->dropForeign(['service_id']);
            $table->dropColumn('service_id');
        });
    }
    
};
