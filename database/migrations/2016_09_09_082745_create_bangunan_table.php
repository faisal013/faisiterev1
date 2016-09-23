<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBangunanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
          Schema::create('bangunan', function(Blueprint $table)
        {
            $table->increments('id');
            $table->integer('id_sekolah');
            $table->integer('id_infrastruktur');

            $table->string('bangunan_milik');
            $table->string('bangunan_kondisi');
            $table->integer('bangunan_jml_m');
            $table->integer('bangunan_jml_bm');
            $table->string('photo_bangunan');
            $table->timestamp('create_at');
            $table->timestamp('update_at');
            
            $table->softDeletes();

        });
        //
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
         Schema::drop('bangunan');
    }
}
