<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRenovasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('renovasi', function(Blueprint $table)
        {
        $table->increments('id');
        $table->integer('id_bangunan');
        $table->date('renovasi_bangun');
        $table->date('renovasi_renov');
        $table->timestamp('create_at');
        $table->timestamp('update_at');
        $table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('renovasi');
    }
}
