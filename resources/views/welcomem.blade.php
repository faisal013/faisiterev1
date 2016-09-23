<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link href="{{ asset('vendor/crudbooster/assets/adminlte/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="{{asset("vendor/crudbooster/assets/adminlte/font-awesome/css")}}/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="{{ asset('vendor/crudbooster/assets/adminlte/dist/css/AdminLTE.min.css')}}" rel="stylesheet" type="text/css" />    
    <link href="{{ asset("vendor/crudbooster/assets/adminlte/dist/css/skins/_all-skins.min.css")}}" rel="stylesheet" type="text/css" />         
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  
  <!-- REQUIRED JS SCRIPTS -->

  <!-- jQuery 2.1.3 -->
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/jQuery/jQuery-2.1.4.min.js') }}"></script>
  
  <!-- Bootstrap 3.3.2 JS -->
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/bootstrap/js/bootstrap.min.js') }}" type="text/javascript"></script>
  <!-- AdminLTE App -->
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/dist/js/app.min.js') }}" type="text/javascript"></script>
  
  <link href="{{ asset("vendor/crudbooster/assets/adminlte/plugins/iCheck/all.css")}}" rel="stylesheet" type="text/css" />
  <!-- iCheck 1.0.1 -->
    <script src="{{ asset("vendor/crudbooster/assets/adminlte/plugins/iCheck/icheck.min.js")}}" type="text/javascript"></script>
    <script src="{{ asset("vendor/crudbooster/assets/js/dateformat.js")}}" type="text/javascript"></script>
  <!-- ChartJS 1.0.1 -->
    <script src="{{ asset('vendor/crudbooster/assets/adminlte/plugins/chartjs/Chart.min.js') }}"></script>    

  <!--BOOTSTRAP DATEPICKER--> 
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/datepicker/bootstrap-datepicker.js') }}"></script>
  <link rel="stylesheet" href="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/datepicker/datepicker3.css') }}">

  <!--BOOTSTRAP DATERANGEPICKER-->
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/daterangepicker/moment.min.js') }}"></script>
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/daterangepicker/daterangepicker.js') }}"></script>
  <link rel="stylesheet" href="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/daterangepicker/daterangepicker-bs3.css') }}">

  <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/timepicker/bootstrap-timepicker.min.css') }}">       
  <script src="{{ asset ('vendor/crudbooster/assets/adminlte/plugins/timepicker/bootstrap-timepicker.min.js') }}"></script>

  <link rel='stylesheet' href='{{ asset("vendor/crudbooster/assets/fancy//source/jquery.fancybox.css") }}'/>
  <script src="{{ asset('vendor/crudbooster/assets/fancy/source/jquery.fancybox.pack.js') }}"></script>   

  <!--SWEET ALERT-->
  <script src="{{asset('vendor/crudbooster/assets/sweetalert/dist/sweetalert.min.js')}}"></script> 
  <link rel="stylesheet" type="text/css" href="{{asset('vendor/crudbooster/assets/sweetalert/dist/sweetalert.css')}}">

  <!--MONEY FORMAT-->
  <script src="{{asset('vendor/crudbooster/jquery.price_format.2.0.min.js')}}"></script>
  
@include('header')
</head>
<body>
<blockquote>
<!-- <font color="orange"size="4"><center><b>MONITORING INFRASTRUKTUR SEKOLAH DASAR KABUPATEN PACITAN</b></center></font>-->
    <p>Selamat datang di Website Monitoring Infrastruktur Sekolah Dasar</p>
      <ul>
        <li>1.  Seluruh data yang disikan dalam LI sekolah ini disesuaikan dengan Dapodik untuk sekolah dalam naungan Kemdikbud dan pendataan EMIS pada Madrasah dalam naungan Kementerian Agama.</li>
        <li>2.   Selanjutnya juga untuk pengisian Nomor Pokok Sekolah Nasional (NPSN) juga harus sesuai dengan yang tercantum di laman http://referensi.data.kemdikbud.go.id.</li>
        <li>3. Format yang sudah ada dalam Laporan Individu Sekolah ini pun tidak boleh dirubah kembali, karena Format LI-S/M sudah baku tentunya.
</li>

      </ul>
      <p><a href="http://localhost/faisiterev1/public/admin" class="button loading-pulse lighten primary">Login Disini</a></p>
      <p><strong></strong></p>
</blockquote>
</body>
</html>
