<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {
	// Hàm khởi tạo
    function __construct() {
        parent::__construct();
        $this->data['com']='profile';
    }
    
	public function index(){
        $this->data['title']='FAHASA.COM';
        $this->data['view']='index';
		$this->load->view('frontend/layout',$this->data);
	}
}
