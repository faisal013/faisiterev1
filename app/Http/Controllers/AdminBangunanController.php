<?php
namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use Mail;
use Hash;
use Cache;
use Validator;

class AdminBangunanController extends \crocodicstudio\crudbooster\controllers\CBController {

    public function __construct() {
        $this->table              = "bangunan";
        $this->primary_key        = "id";
        $this->title_field        = "id";
        $this->limit              = 20;
        $this->index_orderby      = ["id"=>"desc"];
        $this->button_show_data   = true;
        $this->button_reload_data = true;
        $this->button_new_data    = true;
        $this->button_delete_data = true;
        $this->button_sort_filter = true;
        $this->button_export_data = true;

        $this->col = array();
		/*$this->col[] = array("label"=>"Sekolah","name"=>"id_sekolah","join"=>"sekolah,sekolah_nama");*/
		$this->col[] = array("label"=>"Infrastruktur","name"=>"id_infrastruktur","join"=>"infrastruktur,infrastruktur_jenis");
		/*$this->col[] = array("label"=>"Bangunan Jenis","name"=>"bangunan_jenis" );*/
		$this->col[] = array("label"=>"Kepemilikan","name"=>"bangunan_milik" );
		$this->col[] = array("label"=>"Kondisi Bangunan","name"=>"bangunan_kondisi" );
		$this->col[] = array("label"=>"Jumlah","name"=>"bangunan_jml_m" );
		/*$this->col[] = array("label"=>"Bangunan Jml Bm","name"=>"bangunan_jml_bm" );*/
		$this->col[] = array("label"=>"Foto Bangunan","name"=>"photo_bangunan","image"=>1 );
		/*$this->col[] = array("label"=>"Create At","name"=>"create_at" );
		$this->col[] = array("label"=>"Update At","name"=>"update_at" );
		$this->col[] = array("label"=>"Deleted At","name"=>"deleted_at" );*/

		$this->form = array();
		/*$this->form[] = array("label"=>"Sekolah","name"=>"id_sekolah","type"=>"select","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"sekolah,sekolah_nama");*/
		$this->form[] = array("label"=>"Infrastruktur","name"=>"id_infrastruktur","type"=>"select","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"infrastruktur,infrastruktur_jenis");
		/*$this->form[] = array("label"=>"Bangunan Jenis","name"=>"bangunan_jenis","type"=>"text","required"=>TRUE,"validation"=>"required|min:3|max:255");*/
		$this->form[] = array("label"=>"Kepemilikan","name"=>"bangunan_milik","type"=>"select","required"=>TRUE,"dataenum"=>['Milik|Milik','Sewa|Sewa','Pinjam|Pinjam']);
		$this->form[] = array("label"=>"Kondisi Bangunan","name"=>"bangunan_kondisi","type"=>"select","required"=>TRUE,"dataenum"=>['Baik|Baik','Rusak Ringan|Rusak Ringan','Rusak Berat|Rusak Berat']);
		$this->form[] = array("label"=>"Jumlah","name"=>"bangunan_jml_m","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0");
	/*	$this->form[] = array("label"=>"Bangunan Jml Bm","name"=>"bangunan_jml_bm","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0");*/

		$this->form[] = array("label"=>"Foto Bangunan","name"=>"photo_bangunan","type"=>"upload_standard",'upload_file'=>false,"help"=>"Resolution recomended is 2500x4300px",'required'=>true,'validation'=>'required|image|max:10000');

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
