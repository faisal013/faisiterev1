<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInfrastrukturTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('infrastruktur', function(Blueprint $table)
        {
        $table->increments('id');
        $table->string('infrastruktur_jenis');
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
         Schema::drop('infrastruktur');
    }
}
