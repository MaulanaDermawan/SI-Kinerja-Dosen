<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Model_login extends CI_Model
{
    public function auth($username)
    {
        return $this->db->get_where('registrasi', ['username' => $username])->row_array();
    }
}