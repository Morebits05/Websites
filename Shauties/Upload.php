<?php
//Check that we have a file
if((!empty($_FILES["Filename"])) && ($_FILES['Filename']['error'] == 0)) {
  //Check if the file is JPEG image and it's size is less than 350Kb
  {
  $filename = basename($_FILES['Filename']['name']);
  $ext = substr($filename, strrpos($filename, '.') + 1);
  if (($ext == "doc") 
    ($_FILES["uploaded_file"]["size"] < 5000000)) {
    //Determine the path to which we want to save this file
      $newname = dirname(__FILE__).'/newsletters/'.$filename;
      //Check if the file with the same name is already exists on the server
      if (!file_exists($newname)) {
        //Attempt to move the uploaded file to it's new place
        if ((move_uploaded_file($_FILES['uploaded_file']['tmp_name'],$newname))) {
		   UpdateDom($_REQUEST['Month'],$newname);
		   $message =  "File Uploaded! The file has been saved as: " .$newname;
        } else {
           $message = "Error: A problem occurred during file upload!";
        }
      } else {
         $message =  "Error: File ".$_FILES["uploaded_file"]["name"]." already exists";
      }
  } else {
     $message = "Error: Only Word Document under 5 megabytes  are accepted for upload";
  }
} else {
 $message =  "Error: No file uploaded";
}
 
 
 function UpdateDom($Month,$FileName)
 {
	$xmlDom = DomDocument();
    $xmlDom->Load('Archive.content');
	
	$el ->getElementsByID('Content')->item(0);
	
	$newel = xmlDom->CreateElement('NewsLetter');
	$child = xmlDom->CreateElemement('Month');
	$child2 = xmlDom->CreateElement('Link');
	$month =$Month
	$file = $FileName;
	
	$child->appendData($month);
	$child2->appendData($file);
	
	$newel->appendChild($child);
	$newel->appendChild($child2);
	xmlDom->Save('Archive.content');
}
?>