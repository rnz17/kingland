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
    Schema::create('products', function (Blueprint $table) {
        $table->id(); // Assumes `id` is an auto-incrementing primary key
        $table->string('code');
        $table->string('name');
        $table->string('supplier')->nullable(); // Nullable if supplier might be NULL
        $table->longText('spec');
        $table->enum('unit', ['piece', 'box', 'can', 'set', 'bundle', 'pack', 'pouch']);
        $table->integer('pcs_unit');
        $table->decimal('unit_price', 8, 2);
        $table->decimal('value_ratio', 8, 2)->nullable(); // Nullable based on your data
        $table->string('status');
        $table->decimal('available', 8, 2);
        $table->decimal('needed', 8, 2);
        $table->decimal('to_buy', 8, 2);
        $table->boolean('low_alert');
        $table->text('prod_note')->nullable();
        $table->timestamps(); // Adds `created_at` and `updated_at`
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
