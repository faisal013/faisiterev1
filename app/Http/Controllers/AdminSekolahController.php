<?php
namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use Mail;
use Hash;
use Cache;
use Validator;

class AdminSekolahController extends \crocodicstudio\crudbooster\controllers\CBController {

    public function __construct() {
        $this->table              = "sekolah";
        $this->primary_key        = "id";
        $this->title_field        = "sekolah_nama";
        $this->limit              = 20;
        $this->index_orderby      = ["id"=>"desc"];
        $this->button_show_data   = true;
        $this->button_reload_data = true;
        $this->button_new_data    = true;
        $this->button_delete_data = true;
        $this->button_sort_filter = true;
        $this->button_export_data = true;

        $this->col = array();
		/*$this->col[] = array("label"=>"Cms Users","name"=>"id_cms_users","join"=>"cms_users,name");*/
		$this->col[] = array("label"=>"Nss","name"=>"nss" );
		$this->col[] = array("label"=>"Npsn","name"=>"npsn" );
		$this->col[] = array("label"=>"Nama Sekolah","name"=>"sekolah_nama" );
    $this->col[] = array("label"=>"Alamat","name"=>"sekolah_jalan" );
		$this->col[] = array("label"=>"Jenis Sekolah","name"=>"sekolah_jenis" );
		$this->col[] = array("label"=>"Desa/Kelurahan","name"=>"sekolah_kel_des" );
		$this->col[] = array("label"=>"Kategori Wilayah","name"=>"sekolah_kat_wil" );
		$this->col[] = array("label"=>"Kecamatan","name"=>"sekolah_kec" );
		$this->col[] = array("label"=>"Kabupaten/Kota","name"=>"sekolah_kab_kota" );
    $this->col[] = array("label"=>"Kategori Kabupaten/Kota","name"=>"sekolah_kat_kab_kot" );
		$this->col[] = array("label"=>"Propinsi","name"=>"sekolah_prop" );
		$this->col[] = array("label"=>"Kode Pos","name"=>"sekolah_pos" );
		$this->col[] = array("label"=>"Telp","name"=>"sekolah_telp" );
		$this->col[] = array("label"=>"E-mail","name"=>"sekolah_email" );
		$this->col[] = array("label"=>"Alamat Website","name"=>"sekolah_web" );
		$this->col[] = array("label"=>"Status Sekolah","name"=>"sekolah_status" );
		$this->col[] = array("label"=>"Akreditasi","name"=>"sekolah_akred" );
		$this->col[] = array("label"=>"Waktu Penyelenggaraan","name"=>"sekolah_waktu" );
		$this->col[] = array("label"=>"Gugus Sekolah","name"=>"sekolah_gusus" );
		$this->col[] = array("label"=>"Kategori Sekolah","name"=>"sekolah_kat" );
		$this->col[] = array("label"=>"Manajemen Berbasis Sekolah","name"=>"sekolah_mjmn" );
		$this->col[] = array("label"=>"Kurikulum","name"=>"sekolah_kuri" );
		$this->col[] = array("label"=>"Koneksi Internet","name"=>"sekolah_inet" );
		$this->col[] = array("label"=>"Menerima Dana Bos","name"=>"sekolah_bos" );
		/*$this->col[] = array("label"=>"Create At","name"=>"create_at" );
		$this->col[] = array("label"=>"Update At","name"=>"update_at" );
		$this->col[] = array("label"=>"Deleted At","name"=>"deleted_at" );*/

		$this->form = array();
		/*$this->form[] = array("label"=>"Cms Users","name"=>"id_cms_users","type"=>"select","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"cms_users,name");*/
		$this->form[] = array("label"=>"Nss","name"=>"nss","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0");
		$this->form[] = array("label"=>"Npsn","name"=>"npsn","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0");
		$this->form[] = array("label"=>"Nama Sekolah","name"=>"sekolah_nama","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
        $this->form[] = array("label"=>"Alamat","name"=>"sekolah_jalan","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
		$this->form[] = array("label"=>"Jenis Sekolah","name"=>"sekolah_jenis","type"=>"select","required"=>TRUE,"dataenum"=>['SD|SD','|MI']);
		$this->form[] = array("label"=>"Desa/Kelurahan","name"=>"sekolah_kel_des","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
	/*	$this->form[] = array("label"=>"Kategori Wilayah","name"=>"sekolah_kat_wil","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
    $this->form[] = array("label"=>"Kategori Wilayah","name"=>"sekolah_kat_wil","type"=>"select","required"=>TRUE,"dataenum"=>['Daerah Terpecil|Daerah Terpecil','Daerah Perbatasan|Daerah Perbatasan','Daerah Transmigrasi|Daerah Transmigrasi','Tidak Termasuk Kategori 1, 2 dan 3|Tidak Termasuk Kategori 1, 2 dan 3']);
		$this->form[] = array("label"=>"Kecamatan","name"=>"sekolah_kec","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
		$this->form[] = array("label"=>"Kabupaten/Kota","name"=>"sekolah_kab_kota","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
  
        $this->form[] = array("label"=>"Kategori Kabupaten/Kota","name"=>"sekolah_kat_kab_kot","type"=>"radio","required"=>TRUE,"dataenum"=>['Kabupaten|Kabupaten','Kota|Kota']);

		$this->form[] = array("label"=>"Propinsi","name"=>"sekolah_prop","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
		$this->form[] = array("label"=>"Kode Pos","name"=>"sekolah_pos","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0");
		$this->form[] = array("label"=>"Telp","name"=>"sekolah_telp","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
		$this->form[] = array("label"=>"E-mail","name"=>"sekolah_email","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");
		$this->form[] = array("label"=>"Alamat Website","name"=>"sekolah_web","type"=>"text","required"=>FALSE,"validation"=>"required|min:3|max:255");
	/*	$this->form[] = array("label"=>"Status Sekolah","name"=>"sekolah_status","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Status Sekolah","name"=>"sekolah_status","type"=>"radio","required"=>TRUE,"dataenum"=>['Negeri|Negeri','Swasta|Swasta'],"required"=>TRUE);
		/*$this->form[] = array("label"=>"Status Akreditasi","name"=>"sekolah_akred","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Status Akreditasi","name"=>"sekolah_akred","type"=>"radio","required"=>TRUE,"dataenum"=>['A|A','B|B','C|C','TT|TT'],"required"=>TRUE);
		/*$this->form[] = array("label"=>"Waktu Penyelenggaraan","name"=>"sekolah_waktu","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Waktu Penyelenggaraan","name"=>"sekolah_waktu","type"=>"radio","required"=>TRUE,"dataenum"=>['Pagi|Pagi','Siang|Siang','Kombinasi|Kombinasi'],"required"=>TRUE);
		/*$this->form[] = array("label"=>"Gugus Sekolah","name"=>"sekolah_gusus","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
         $this->form[] = array("label"=>"Gugus Sekolah","name"=>"sekolah_gusus","type"=>"radio","required"=>TRUE,"dataenum"=>['Inti|Inti','Imbas|Imbas','Belum Ikut|Belum Ikut']);
		/*$this->form[] = array("label"=>"Kategori Sekolah","name"=>"sekolah_kat","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Kategori Sekolah","name"=>"sekolah_kat","type"=>"select","required"=>TRUE,"dataenum"=>['SD SPM (Standar Pelayanan Minimal)|SD SPM (Standar Pelayanan Minimal)','SD RSSN (Rintisan Sekolah Standar Nasional)|SD RSSN (Rintisan Sekolah Standar Nasional)','SD SSN (Sekolah Standar Nasional)|SD SSN (Sekolah Standar Nasional)','SD RSBI (Rintisan Sekolah Bertaraf Internasional)|SD RSBI (Rintisan Sekolah Bertaraf Internasional)','SD SBI (Sekolah Bertaraf Internasional)|SD SBI (Sekolah Bertaraf Internasional)','SD-SMP Satu Atap|SD-SMP Satu Atap']);
		/*$this->form[] = array("label"=>"Manajemen Berbasis Sekolah","name"=>"sekolah_mjmn","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Manajemen Berbasis Sekolah","name"=>"sekolah_mjmn","type"=>"radio","required"=>TRUE,"dataenum"=>['YA|YA','TIDAK|TIDAK']);
		/*$this->form[] = array("label"=>"Kurikulum","name"=>"sekolah_kuri","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Kurikulum","name"=>"sekolah_kuri","type"=>"select","required"=>TRUE,"dataenum"=>['Kurikulum 2013|Kurikulum 2013','2004 (KBK)|2004 (KBK)','KTSP|KTSP']);
		/*$this->form[] = array("label"=>"Koneksi Internet","name"=>"sekolah_inet","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
         $this->form[] = array("label"=>"Koneksi Internet","name"=>"sekolah_inet","type"=>"radio","required"=>TRUE,"dataenum"=>['YA|YA','TIDAK|TIDAK']);
		/*$this->form[] = array("label"=>"Menerima Dana Bos","name"=>"sekolah_bos","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
        $this->form[] = array("label"=>"Menerima Dana Bos","name"=>"sekolah_bos","type"=>"radio","required"=>TRUE,"dataenum"=>['YA|YA','TIDAK|TIDAK']);
		/*$this->form[] = array("label"=>"Create At","name"=>"create_at","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s");
		$this->form[] = array("label"=>"Update At","name"=>"update_at","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s");
		$this->form[] = array("label"=>"Deleted At","name"=>"deleted_at","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s");*/


        /*
        | ----------------------------------------------------------------------
        | Add alert message to this module at overheader
        | ----------------------------------------------------------------------
        | @message = Text of message
        | @type    = warning,success,danger,info
        |
        */
        $this->alert        = array();




        /*
        | ----------------------------------------------------------------------
        | Add more button to header button
        | ----------------------------------------------------------------------
        | @label = Name of button
        | @url   = URL Target
        | @icon  = Icon from Awesome.
        |
        */
        $this->index_button = array();




        /*
        | ----------------------------------------------------------------------
        | Add relational data to next tab
        | ----------------------------------------------------------------------
        | @label       = Name of element
        | @controller  = Controller name of other module
        | @foreign_key = Optional.
        |
        */
        $this->form_tab     = array();




        /*
        | ----------------------------------------------------------------------
        | Add relational data to next area or element, i mean under the existing form
        | ----------------------------------------------------------------------
        | @label       = Name of form sub
        | @controller  = Controller name of other module
        | @foreign_key = Optional.
        |
        */
        $this->form_sub     = array();




        /*
        | ----------------------------------------------------------------------
        | Add element to form at bottom
        | ----------------------------------------------------------------------
        | push your html / code in object array
        |
        */
        $this->form_add     = array();




        /*
        | ----------------------------------------------------------------------
        | You may use this bellow array to add statistic at dashboard
        | ----------------------------------------------------------------------
        | @label, @count, @icon, @color
        |
        */
        $this->index_statistic = array();




        /*
        | ----------------------------------------------------------------------
        | Add additional view at top or bottom of index
        | ----------------------------------------------------------------------
        | @view = view location
        | @data = data array for view
        |
        */
        $this->index_additional_view = array();



        //No need chanage this constructor
        $this->constructor();
    }


    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate query of index result
    | ----------------------------------------------------------------------
    | @query = current database query
    |
    */
    public function hook_query_index(&$query) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate row of index table html
    | ----------------------------------------------------------------------
    | @html for row html
    | @data for get data row
    | You should using foreach
    |
    */
    public function hook_row_index(&$html,$data) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate data input before add data is execute
    | ----------------------------------------------------------------------
    | @arr
    |
    */
    public function hook_before_add(&$arr) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after add function called
    | ----------------------------------------------------------------------
    | @id = last insert id
    |
    */
    public function hook_after_add($id) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for manipulate data input before update data is execute
    | ----------------------------------------------------------------------
    | @postdata = input post data
    | @id       = current id
    |
    */
    public function hook_before_edit(&$postdata,$id) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after edit function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_after_edit($id) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command before delete function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_before_delete($id) {
        //Your code here

    }

    /*
    | ----------------------------------------------------------------------
    | Hook for execute command after delete function called
    | ----------------------------------------------------------------------
    | @id       = current id
    |
    */
    public function hook_after_delete($id) {
        //Your code here

    }



    //By the way, you can still create your own method in here... :)


}
