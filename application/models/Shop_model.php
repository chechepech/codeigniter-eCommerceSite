<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_model extends CI_Model { 
  function __construct() { 
    parent::__construct();
    $this->load->database();
    $this->load->helper('url');      
  } 

  public function get_product_details($product_id = NULL) { 
    $this->db->where('product_id', $product_id); 
    $query = $this->db->get('products'); 
    return $query; 
  } 

  public function get_all_products() {
    $query = $this->db->get('products'); 
    return $query; 
  } 

  public function get_all_products_by_category_name($cat_url_name = NULL) {
    if ($cat_url_name) {
      $this->db->where('cat_url_name', $cat_url_name);
      $cat_query = $this->db->get('categories');

      foreach ($cat_query->result() as $row) {
        $category_id = $row->cat_id;
      }

      $this->db->where('category_id', $category_id);
    }

    $query = $this->db->get('products'); 
    return $query; 
  } 

  public function get_all_categories($cat_url_name = NULL) {
    if ($cat_url_name) {
      $this->db->where('cat_url_name', $cat_url_name);
    }

    $query = $this->db->get('categories');
    return $query;
  }

  public function save_cart_to_database($cust_data = NULL, $order_data = NULL) { 
    $this->db->insert('customer', $cust_data); 
    $order_data['cust_id'] = $this->db->insert_id(); 
    if ($this->db->insert('orders', $order_data)) {
      return true;
    } else {
      return false;
    }
  } 
}