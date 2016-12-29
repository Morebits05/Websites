// JavaScript Document
function UpdateAndSubmit()
{
	if (window.ActiveXObject) 
	{
		xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
		xmlDoc.async = "false";
		xmlDoc.load("Archive.content");
		update();
	}
	else if (document.implementation &&
		document.implementation.createDocument)
  {
  xmlDoc=document.implementation.createDocument("","root",null);
  xmlDoc.load("Archive.content");
  xmlDoc.onload=update();
  }
else
  {
  alert('Your browser cannot handle this script');
  }
}

function update()
{
	// Create a new XML DOM element called NewsLetter
	var newel = xmlDoc.createElement("NewsLetter");
	
	//Create a new child element called Month
	var child = xmlDoc.createElement("Month");
	
	// Get Month name from Form ID ("Month")
	var d= document.getElementByID("Month");
	var data = d.innerHTML;
	
	// Add month name to Month Element
	var text = child.appendData(data);
	
	// Add child element Month to NewsLetter
	newel.appendChild(child);	
	
     // Create an XMLDOM Element called Link
	child = xmlDoc.createElement('Link');
	
	// Get  Filename  from Form ID ("Filename")
	var d= document.getElementByID("Filename");
	var data = d.innerHTML;
	
    // Add File to Link Element
    child.appendData(data)
	
	// Add Link to NewsLetter Element
	newel.appendChild(child);
	
	// Add NewsLetter To XML Document
	var x = xmlDoc.getElementByID("Content");
	x.appendChild(newel);
	
	// Save XML Document
	xmlDoc.save("Archive.content");
}