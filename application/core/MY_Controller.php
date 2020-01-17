<?php
defined('BASEPATH') or exit('No direct script access allowed');

class MY_Controller extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('cart');
		$this->load->helper('form');
		$this->load->helper('url');
		$this->load->helper('language');
		$this->lang->load('en_admin', 'english');
		$this->load->helper('security');
		$this->load->model('Shop_model');
		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
	}
}