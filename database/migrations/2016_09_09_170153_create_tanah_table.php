<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTanahTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tanah', function(Blueprint $table)
        {
        $table->increments('id');
        $table->integer('id_infrastruktur');
        $table->string('tanah_milik');
        $table->integer('tanah_luas');
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
      Schema::drop('tanah');
    }
}
