<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSekolahTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('sekolah', function(Blueprint $table)
        {
        $table->increments('id');
        $table->integer('id_cms_users');
        $table->integer('nss');
        $table->integer('npsn');
        $table->string('sekolah_nama');
        $table->string('sekolah_jalan');
        $table->string('sekolah_jenis');
        $table->string('sekolah_kel_des');
        $table->string('sekolah_kat_wil');
        $table->string('sekolah_kec');
        $table->string('sekolah_kab_kota');
        $table->string('sekolah_prop');
        $table->integer('sekolah_pos');
        $table->string('sekolah_telp');
        $table->string('sekolah_email');
        $table->string('sekolah_web');
        $table->string('sekolah_status');
        $table->string('sekolah_akred');
        $table->string('sekolah_waktu');
        $table->string('sekolah_gusus');
        $table->string('sekolah_kat');
        $table->string('sekolah_mjmn');
        $table->string('sekolah_kuri');
        $table->string('sekolah_inet');
        $table->string('sekolah_bos');
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
        Schema::drop('sekolah');
    }
}
