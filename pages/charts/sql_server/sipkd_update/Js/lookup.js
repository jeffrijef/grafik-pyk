function jsReConstruct(formName)
{
    var a = formName.split("?"); 
    var b = a[1].split("&");
    
    var i = 0;
    var c;

    for ( i = 0; i < b.length; i++ )
    {
        if ( b[i].substring(0,4) == "PARC" )
        {
            c = b[i].split("=");
                       
            c[1] = document.getElementById(c[1]).value;
            b[i] = c[0] + "=" + c[1]; 
        }
    }

    var d = "";
    for (i = 0; i < b.length; i++ )
    {
        if ( i+1 == b.length )
            d = d + b[i];
        else
            d = d + b[i] + "&";
    }

    a[1] = d;

    return a[0] + "?" + a[1];
}

function jsOpenLookUp(formName)
{
	var rc = new Array(0); 
	rc = window.showModalDialog(formName, 'Dialog', 'status:no;scroll:yes;help:no;dialogwidth:700px;dialogHeight:600px;dialogHide:true'); 
  
}


function jsOpenLookUp(formName, controlName){
  return jsOpenLookUpa(true,formName, controlName);
}
function jsOpenLookUpa(submit,formName, controlName)
{
	var s = jsReConstruct(formName);
	var rc = new Array(0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:700px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    document.getElementById(controlName).innerText = rc[0];
  
  return submit;
}

function jsOpenLookUp2(formName, controlName0, controlName1){
  return jsOpenLookUp2a(true,formName, controlName0, controlName1);
}
function jsOpenLookUp2a(submit,formName, controlName0, controlName1)
{
    var s = jsReConstruct(formName);
	var rc = new Array(0,0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    if(controlName0 != null)document.getElementById(controlName0).innerText = rc[0];
	
	if (rc[1]==null) rc[1]="";
    if(controlName1 != null)document.getElementById(controlName1).innerText = rc[1];

  return submit;
}
function jsOpenLookUp3(formName, controlName0, controlName1, controlName2) {
  return jsOpenLookUp3a(true, formName, controlName0, controlName1, controlName2);
}
function jsOpenLookUp3a(submit, formName, controlName0, controlName1, controlName2) {
  var s = jsReConstruct(formName);
  var rc = new Array(0, 0, 0);
  rc = window.showModalDialog(formName, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true');

  if (rc == null) return false;
  if (rc.length == 0) return false;
  if (rc[0] == null) rc[0] = "";
  if (controlName0 != null)
  //        //parent.Pages.activeTab;
  //        parent.Pages.activeTab.body.dom.document.getElementById(controlName0).innerText = rc[0];
    document.getElementById(controlName0).innerText = rc[0];



  if (rc[1] == null) rc[1] = "";
  if (controlName1 != null) document.getElementById(controlName1).innerText = rc[1];

  if (rc[2] == null) rc[2] = "";
  if (controlName2 != null) document.getElementById(controlName2).innerText = rc[2];

  return submit;
}

//function jsOpenLookUp3(formName, controlName0, controlName1, controlName2)
//{
//  return jsOpenLookUp3a(true,formName, controlName0, controlName1, controlName2);
//}
//function jsOpenLookUp3a(submit,formName, controlName0, controlName1, controlName2)
//{
//	var s = jsReConstruct(formName);
//	var rc = new Array(0,0,0); 
//	rc = window.showModalDialog(formName, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 

//  if(rc==null)return false;
//  if(rc.length==0)return false;
//	if (rc[0]==null) rc[0]="";
//	if (controlName0 != null)
////	  Ext.getCmp(controlName0).innerText = rc[0];
//	document.getElementById(controlName0).innerText = rc[0];

//	
//	
//	if (rc[1]==null) rc[1]="";
//	if (controlName1 != null) document.getElementById(controlName1).innerText = rc[1];
//	
//	if (rc[2]==null) rc[2]="";
//	if (controlName2 != null) document.getElementById(controlName2).innerText = rc[2];

//  return submit;
//}

function jsOpenLookUp4(formName, controlName0, controlName1, controlName2, controlName3)
{
  return jsOpenLookUp4a(true,formName, controlName0, controlName1, controlName2, controlName3)
}
function jsOpenLookUp4a(submit,formName, controlName0, controlName1, controlName2, controlName3)
{
	var s = jsReConstruct(formName);
	var rc = new Array(0,0,0,0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    if(controlName0 != null)document.getElementById(controlName0).innerText = rc[0];
	
	if (rc[1]==null) rc[1]="";
    if(controlName1 != null)document.getElementById(controlName1).innerText = rc[1];
	
	if (rc[2]==null) rc[2]="";
    if(controlName2 != null)document.getElementById(controlName2).innerText = rc[2];

	if (rc[3]==null) rc[3]="";
    if(controlName3 != null)document.getElementById(controlName3).innerText = rc[3];

  return submit;
}

function jsOpenLookUp5(formName, controlName0, controlName1, controlName2, controlName3, controlName4)
{
  return jsOpenLookUp5a(true,formName, controlName0, controlName1, controlName2, controlName3, controlName4)
}
function jsOpenLookUp5a(submit,formName, controlName0, controlName1, controlName2, controlName3, controlName4)
{
	var s = jsReConstruct(formName);
	var rc = new Array(0,0,0,0,0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    if(controlName0 != null)document.getElementById(controlName0).innerText = rc[0];
	
	if (rc[1]==null) rc[1]="";
    if(controlName1 != null)document.getElementById(controlName1).innerText = rc[1];
	
	if (rc[2]==null) rc[2]="";
    if(controlName2 != null)document.getElementById(controlName2).innerText = rc[2];

	if (rc[3]==null) rc[3]="";
    if(controlName3 != null)document.getElementById(controlName3).innerText = rc[3];

	if (rc[4]==null) rc[4]="";
    if(controlName4 != null)document.getElementById(controlName4).innerText = rc[4];
  return submit;
}

function jsOpenLookUp6(formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5)
{
  return jsOpenLookUp6a(true,formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5)
}
function jsOpenLookUp6a(submit,formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5)
{
	var s = jsReConstruct(formName);
	var rc = new Array(0,0,0,0,0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    if(controlName0 != null)document.getElementById(controlName0).innerText = rc[0];
	
	if (rc[1]==null) rc[1]="";
    if(controlName1 != null)document.getElementById(controlName1).innerText = rc[1];
	
	if (rc[2]==null) rc[2]="";
    if(controlName2 != null)document.getElementById(controlName2).innerText = rc[2];

	if (rc[3]==null) rc[3]="";
    if(controlName3 != null)document.getElementById(controlName3).innerText = rc[3];

	if (rc[4]==null) rc[4]="";
    if(controlName4 != null)document.getElementById(controlName4).innerText = rc[4];

	if (rc[5]==null) rc[5]="";
    if(controlName5 != null)document.getElementById(controlName5).innerText = rc[5];
  return submit;
}
function jsOpenLookUp7(formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5, controlName6)
{
  return jsOpenLookUp7a(true,formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5, controlName6)
}
function jsOpenLookUp7a(submit,formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5, controlName6)
{
	var s = jsReConstruct(formName);
	var rc = new Array(0,0,0,0,0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    if(controlName0 != null)document.getElementById(controlName0).innerText = rc[0];
	
	if (rc[1]==null) rc[1]="";
    if(controlName1 != null)document.getElementById(controlName1).innerText = rc[1];
	
	if (rc[2]==null) rc[2]="";
    if(controlName2 != null)document.getElementById(controlName2).innerText = rc[2];

	if (rc[3]==null) rc[3]="";
    if(controlName3 != null)document.getElementById(controlName3).innerText = rc[3];

	if (rc[4]==null) rc[4]="";
    if(controlName4 != null)document.getElementById(controlName4).innerText = rc[4];

	if (rc[5]==null) rc[5]="";
    if(controlName5 != null)document.getElementById(controlName5).innerText = rc[5];

	if (rc[6]==null) rc[6]="";
    if(controlName6 != null)document.getElementById(controlName6).innerText = rc[6];
  return submit;
}
function jsOpenLookUp8(formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5, controlName6, controlName7)
{
  return jsOpenLookUp8a(true,formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5, controlName6, controlName7)
}
function jsOpenLookUp8a(submit,formName, controlName0, controlName1, controlName2, controlName3, controlName4, controlName5, controlName6, controlName7)
{
	var s = jsReConstruct(formName);
	var rc = new Array(0,0,0,0,0); 
	rc = window.showModalDialog(s, null, 'status:no;scroll:yes;help:no;dialogwidth:670px;dialogHeight:600px;dialogHide:true'); 
    if(rc==null)return false;
    if(rc.length==0)return false;

	if (rc[0]==null) rc[0]="";
    if(controlName0 != null)document.getElementById(controlName0).innerText = rc[0];
	
	if (rc[1]==null) rc[1]="";
    if(controlName1 != null)document.getElementById(controlName1).innerText = rc[1];
	
	if (rc[2]==null) rc[2]="";
    if(controlName2 != null)document.getElementById(controlName2).innerText = rc[2];

	if (rc[3]==null) rc[3]="";
    if(controlName3 != null)document.getElementById(controlName3).innerText = rc[3];

	if (rc[4]==null) rc[4]="";
    if(controlName4 != null)document.getElementById(controlName4).innerText = rc[4];

	if (rc[5]==null) rc[5]="";
    if(controlName5 != null)document.getElementById(controlName5).innerText = rc[5];

	if (rc[6]==null) rc[6]="";
    if(controlName6 != null)document.getElementById(controlName6).innerText = rc[6];
    
  if (rc[7]==null) rc[7]="";
    if(controlName7 != null)document.getElementById(controlName7).innerText = rc[7];
  return submit;
}
function closeLookUp()
{
  window.returnValue=null;
  window.close();
}

function OpenPopup(formName)
{
  window.open(formName,"List","scrollbars=yes,resizable=no,width=600,height=400");
  return false;
}
// JScript File

