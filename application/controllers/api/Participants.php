<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Participants  extends BD_Controller {
    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->database();
    }
	
    public function index_get($key=null)
    {
        $this->auth(); // Comment if required to make this API non-authenticated.
        if(isset($key)){
            if(is_numeric($key))
                $this->db->where('id',$key);
            else
                $this->db->where('name',$key)->or_where('locality',$key);
        }
        $result=$this->db->get('meetup_registry');
        $this->response($result->result());
    }
	public function index_post()
	{       
        $input=$this->input->post();
        $msg=" is required field";
        $flag=1;$status=400;
        $return['status']= false;
        if($input['name']==NULL){
            $return['error']= "Name".$msg;$flag=0;
        }
        if($input['age']==NULL){
            $return['error']= "Age".$msg;$flag=0;
        }
        if($input['dob']==NULL){
            $return['error']= "Dob".$msg;$flag=0;
        }
        if($input['profession']==NULL){
            $return['error']= "Profession".$msg;$flag=0;
        }
        if($input['locality']==NULL){
            $return['error']= "Locality".$msg;$flag=0;
        }
        if($input['no_of_guests']==NULL){
            $return['error']= "Number of guests".$msg;$flag=0;
        }
        if($input['no_of_guests']>2){
            $return['error']= "Number of guests should be less than 2";$flag=0;
        }
        if($input['address']==NULL){
            $return['error']= "Address".$msg;$flag=0;
        }
        if(strlen($input['address'])>50){
            $return['error']= "Address must be less than 50 characters";$flag=0;
        }
        if($flag){
            if($this->db->insert('meetup_registry',$input)){
                $return['message']= "Registered successfully";
                $status=200;$return['status']= true;
            }else{
                $return['error']= "Something went wrong! Contact us at example.org";
            }
        }
        $this->response($return, $status); // OK (200) being the HTTP response code
	}

    public function index_put($id){
        $this->auth();
        $status=400;
        $input['name']=$this->input->input_stream('name');
        $input['age']=$this->input->input_stream('age');
        $input['dob']=$this->input->input_stream('dob');
        $input['profession']=$this->input->input_stream('profession');
        $input['locality']=$this->input->input_stream('locality');
        $input['no_of_guests']=$this->input->input_stream('no_of_guests');
        $input['address']=$this->input->input_stream('address');
        if($this->db->where('id',$id)->update('meetup_registry',$input)){
            $status=200;$return['status']= true;
            $return['message']= "Updated successfully";
        }else{
            $return['error']= "Something went wrong! Contact us at example.org";
        }
        $this->response($return, $status); // OK (200) being the HTTP response code
    }

}
