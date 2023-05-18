<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trucks', function (Blueprint $table) {
            $table->id();
            $table->timestamps();

            $table->string('truck_number')->unique();
            $table->string('make');
            $table->string('model');
            $table->string('year');
            $table->string('odometer');
            $table->string('transmission_type');
            $table->string('engine');
            $table->string('horse_power');
            $table->string('suspension_type');
            $table->string('VIN');
            $table->string('tires_condition');
            $table->string('tire_size');
            $table->string('wheels');
            $table->string('available_for');
            $table->string('available');
            $table->string('price');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('trucks');
    }
};
