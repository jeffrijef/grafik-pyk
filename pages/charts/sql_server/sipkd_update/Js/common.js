// JScript File

function textboxMultilineMaxNumber(txt, n) {
  var maxlength = new Number(n);

  //  try {
  if (txt.value.length > (maxlength - 1)) {
    return false;
  }
  //  } catch (e) 
  //  {
  //  }

  return true;
}

function Count(text, long) {
  var maxlength = new Number(long); // Change number to your max length.

  if (text.value.length > maxlength) {
    text.value = text.value.substring(0, maxlength);
    alert(" Hanya boleh " + long + " karakter");
  }
}


function OpenMR() {
  open("../ModulMR/Home.aspx");
}
function GetModul(s) {
  if (s == "perencanaan") {
    return "../MR/Home.aspx";
  }
  return "../ModulMR/Home.aspx";
}

function alertMsg() {
  if (document.getElementById("ctl00_Status") != null) {
    msg = document.getElementById("ctl00_Status").value;
    if (msg != "") {
      alert(document.getElementById("ctl00_Status").value);
      document.getElementById("ctl00_Status").value = "";
    }
  }
}

function confirmDelete() {
  if (document.getElementById("ctl00_ConfirmDelete") != null) {
    val = document.getElementById("ctl00_ConfirmDelete").value;
    if ((val != "true") && (val != "false") && (val != "")) {
      ret = confirm(val);
      if (document.getElementById("ctl00_ucon_Master_Detil_utxt_Param") != null) {
        document.getElementById("ctl00_ucon_Master_Detil_utxt_Param").value = ret + "";
      } else if (document.getElementById("ctl00_ucon_Master_List_utxt_Param") != null) {
        document.getElementById("ctl00_ucon_Master_List_utxt_Param").value = ret + "";
      }
    }
  } //*/
}

function confirmHapus() {
  return confirm("Apakah anda yakin akan menghapus data ini?");
}

function confirmHapusRka() {
  return confirm("Jika anda menghapus rekening anggaran, maka otomatis data penjabarannya juga akan terhapus. Apakah anda yakin akan menghapus data ini?");
}

function confirmTransferSpd() {
  return confirm("Proses transfer akan menghapus semua rincian SPD yang telah diisi dan menambahkan semua data dari DPA. Apakah anda yakin akan melakukan transfer?");
}

function confirmAddDetilSpd() {
  return confirm("Gunakan tombol transfer untuk mentransfer nilai DPA bulan/triwulan tertentu ke SPD. Tombol ini hanya digunakan untuk menambahkan rekening SPD yang tidak ada di DPA karena suatu kondisi tertentu. Apakah anda akan melanjutkan menambah rekening?");
}

function OpenReport(ReportID) {
  window.open(ReportID, '', 'menubar=no, resizable=yes, titlebar=no, left=0, top=0');
  history.back(1);
}
function MM_swapImgRestore() { //v3.0
  var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d = document; if (d.images) {
    if (!d.MM_p) d.MM_p = new Array();
    var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
      if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
  }
}

function MM_findObj(n, d) { //v4.01
  var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
    d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
  }
  if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
  for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
  if (!x && d.getElementById) x = d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
    if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
}

function formatDate(dateValue, format) {
  var fmt = format.toUpperCase();
  var re = /^(M|MM|D|DD|YYYY)([\-\/]{1})(M|MM|D|DD|YYYY)(\2)(M|MM|D|DD|YYYY)$/;
  if (!re.test(fmt)) { fmt = "MM/DD/YYYY"; }
  if (fmt.indexOf("M") == -1) { fmt = "MM/DD/YYYY"; }
  if (fmt.indexOf("D") == -1) { fmt = "MM/DD/YYYY"; }
  if (fmt.indexOf("YYYY") == -1) { fmt = "MM/DD/YYYY"; }

  var M = "" + (dateValue.getMonth() + 1);
  var MM = "0" + M;
  MM = MM.substring(MM.length - 2, MM.length);
  var D = "" + (dateValue.getDate());
  var DD = "0" + D;
  DD = DD.substring(DD.length - 2, DD.length);
  var YYYY = "" + (dateValue.getFullYear());

  var sep = "/";
  if (fmt.indexOf("-") != -1) { sep = "-"; }
  var pieces = fmt.split(sep);
  var result = "";

  switch (pieces[0]) {
    case "M": result += M + sep; break;
    case "MM": result += MM + sep; break;
    case "D": result += D + sep; break;
    case "DD": result += DD + sep; break;
    case "YYYY": result += YYYY + sep; break;
  }

  switch (pieces[1]) {
    case "M": result += M + sep; break;
    case "MM": result += MM + sep; break;
    case "D": result += D + sep; break;
    case "DD": result += DD + sep; break;
    case "YYYY": result += YYYY + sep; break;
  }
  switch (pieces[2]) {
    case "M": result += M; break;
    case "MM": result += MM; break;
    case "D": result += D; break;
    case "DD": result += DD; break;
    case "YYYY": result += YYYY; break;
  }

  return result;
}

function TreeNodeCheckChanged(event, control) {
  // Valid for IE and Firefox/Safari/Chrome.
  var obj = window.event ? window.event.srcElement : event.target;
  //    var source = window.event ? window.event.srcElement.id : event.target.id;
  //    source = source.replace(control.id + "t", control.id + "n");
  //    source = source.replace("CheckBox", "");
  //    var checkbox = document.getElementById(source);
  //    if (checkbox != null &&
  //        obj.tagName == "INPUT" &&
  //        obj.type == "checkbox") {
  //        __doPostBack(checkbox.id, "");
  //    }
  if (obj.tagName == "INPUT" &&
      obj.type == "checkbox") {
    //__doPostBack(checkbox.id, "");
    __doPostBack("", "");
  }
}


function ChangeCheckBoxState(id, checkState) {
  var cb = document.getElementById(id);
  if (cb != null)
    cb.checked = checkState;


}

function ChangeAllCheckBoxStates(checkState, pos) {
  var cb = document.getElementById('chkAll');
  // Toggles through all of the checkboxes defined in the CheckBoxIDs array
  // and updates their value to the checkState input parameter
  if (pos == "1") {
    if (CheckBoxIDs1 != null) {
      for (var i = 0; i < CheckBoxIDs1.length; i++) {
        ChangeCheckBoxState(CheckBoxIDs1[i], checkState);
      }

    }

  } else if (pos == "2") {
    if (CheckBoxIDs2 != null) {
      for (var i = 0; i < CheckBoxIDs2.length; i++) {
        ChangeCheckBoxState(CheckBoxIDs2[i], checkState);
      }
    }
  } else if (pos == "3") {
    if (CheckBoxIDs3 != null) {
      for (var i = 0; i < CheckBoxIDs3.length; i++)
        ChangeCheckBoxState(CheckBoxIDs3[i], checkState);
    }
  }
}
function ChangeAllCheckBoxStates2(checkState, pos) {
  var cb = document.getElementById('chkAll');
  if (checkState) {
    //    if(pos == "1")
    //    {
    //      if (CheckBoxIDs1 != null)
    //      {
    //        for (var i = 0; i < CheckBoxIDs1.length; i++)
    //        { 
    //          if(CheckBoxIDs1[i].checked)
    //            cb.checked=true;
    //          else if(!CheckBoxIDs1[i].checked)
    //            cb.checked=false;
    //        } 
    //      }
    //    }else if(pos == "2")
    //    {
    //      if (CheckBoxIDs2 != null)
    //      {
    //        for (var i = 0; i < CheckBoxIDs2.length; i++)
    //        { 
    //          if(CheckBoxIDs2[i].checked)
    //            cb.checked=true;
    //          else if(!CheckBoxIDs2[i].checked)
    //            cb.checked=false;
    //        } 
    //      }
    //    }else if(pos == "3")
    //    {
    //      if (CheckBoxIDs3 != null)
    //      {
    //        for (var i = 0; i < CheckBoxIDs3.length; i++)
    //        { 
    //          if(CheckBoxIDs3[i].checked)
    //            cb.checked=true;
    //          else if(!CheckBoxIDs3[i].checked)
    //            cb.checked=false;
    //        } 
    //      }
    //    }
  }
  else {
    if (cb != null)
      cb.checked = checkState;
  }

}



// JScript File

