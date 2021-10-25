<%@ page language="C#" autoeventwireup="true" inherits="Sipkd, App_Web_gly0oex0" enablesessionstate="True" %>

<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="atlasToolkit" %>
<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>.::Sistem Informasi Pengelolaan Keuangan Daerah::.</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Expires" content="0" />
  <meta http-equiv="Cache-Control" content="no-cache" />
  <meta http-equiv="Pragma" content="no-cache" />
  <link href="Css/Model.css" rel="stylesheet" type="text/css" />
  <link href="Css/PagingGridView.css" rel="stylesheet" type="text/css" />
  <script language="javascript" src="../js/lookup.js" type="text/javascript"></script>
  <script language="javascript" src="../js/common.js" type="text/javascript"></script>
  <script type="text/javascript">

    function MM_swapImgRestore() { //v3.0
      var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
    }
    function MM_preloadImages() { //v3.0
      var d = document; if (d.images) {
        if (!d.MM_p) d.MM_p = new Array();
        var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
          if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; }
        //             var lbl = document.getElementById("ulbl_tglapp0");
        //             lbl.style.visibility = (lbl.style.visibility == 'visible' ? 'hidden' : 'visible');
        //             setTimeout('MM_preloadImages()', 500);
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
    function setValue(s) {
      document.getElementById("utxt_value").value = s;
      if (s != "perencanaan") {
        $object('MPP1')._show();
      } else {
        OpenMR();
        //open("../ModulMR/Home.aspx");//open(GetModul(s));
      }
      return false;
    }
    function setKeluar() {
      window.close();
    }
  </script>
  <style type="text/css">
    .tex
    {
      font-family: Arial, Helvetica, sans-serif;
      font-size: 8px;
      color: #333;
      text-align: left;
    }
    #apDiv0
    {
      position: absolute;
      top: 591px;
      width: 70%;
      height: 9%;
      left: 2%;
      right: 28%;
    }
    .style2
    {
      width: 125px;
    }
    .style6
    {
      width: 268435456px;
    }
    #enam
    {
      width: 64px;
    }
    #satu
    {
      width: 63px;
    }
    .style10
    {
      height: 102px;
    }
    .inputhome
    {
      display: block;
      width: 92%;
      height: 25px;
      padding: 6px 12px;
      font-size: 14px;
      line-height: 1.4285;
      color: #555;
      background-color: #fff;
      background-image: none;
      border: 1px solid #ccc;
      -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
      -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
      -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
    }
    .style11
    {
      height: 48px;
    }
    .style12
    {
      height: 30px;
      width: 151px;
    }
    .style13
    {
      width: 151px;
    }
    .style14
    {
      height: 45px;
    }
  </style>
</head>
<body background="images/usaditree_bg.jpg" onload="MM_preloadImages('images/SIPKDR6_08b.jpg','images/SIPKDR6_09b.jpg','images/SIPKDR6_10b.jpg','images/SIPKDR6_11b.jpg','images/SIPKDR6_13b.jpg','images/SIPKDR6_14b.jpg','images/SIPKDR6_15b.jpg','images/SIPKDR6_18b.jpg','images/SIPKDR6_19b.jpg','images/SIPKDR6_20b.jpg','images/SIPKDR6_21bjpg.JPG','images/SIPKDR6_23b.jpg','images/SIPKDR6_24b.jpg')">
  <form id="form1" runat="server">
  <cc1:ScriptManager ID="ScriptManager1" EnablePartialRendering="true" runat="server">
  </cc1:ScriptManager>
  <td>
    &nbsp;
  </td>
  <td>
    &nbsp;
  </td>
  <table border="0" cellspacing="5" align="left" style="height: 603px; width: 711px">
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
      <td>
        &nbsp;
      </td>
      <td>
        &nbsp;
      </td>
      <th colspan="3" height="530" width="580" scope="col" style="background-repeat: no-repeat"
        background="images/usaditree.png">
      </th>
    </tr>
  </table>
  <table align="right" width="350" border="0" cellspacing="5" style="background-color: #FFFFFF;
    position: absolute; right: 30px; top: 15px; height: 629px;">
    <tr>
      <td height="73" align="left" class="style13">
        <asp:Panel ID="PnlSipkd" runat="server" Width="153px" Height="100px" alt="" />
      </td>
      <td class="style6">
        <img src="Images/kemendagri.png" align="right" style="height: 100px; width: 79px" />
      </td>
    </tr>
    <tr>
      <td class="style12" style="height: 20px">
      </td>
    </tr>
    <tr>
      <td class="tdinput;style10" colspan="2" style="height: 30px">
        <asp:Label ID="Label6" runat="server" Text="User Nama" Font-Size="Small" ForeColor="GrayText"></asp:Label>
        <asp:TextBox ID="utxt_Userid" runat="server" CssClass="txtmaster inputhome"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td class="tdinput;style10" colspan="2" style="height: 30px">
        <asp:Label ID="Label7" runat="server" Text="Password" Font-Size="Small" ForeColor="GrayText"></asp:Label>
        <asp:TextBox ID="utxt_Pwd" runat="server" CssClass="txtmaster inputhome" TextMode="Password"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td class="tdinput;style10" colspan="2" style="height: 50px">
        <asp:Label ID="Label3" runat="server" Text="Tahun Anggaran" Font-Size="Small" ForeColor="GrayText"></asp:Label>
        <asp:DropDownList class="inputhome" ID="uddl_Thn" runat="server" Width="100%" Style="border: none">
        </asp:DropDownList>
      </td>
    </tr>
    <tr>
      <td class="style10 " colspan="2" style="height: 30px">
        <asp:Label ID="Label4" runat="server" Text="Sufix DB" Font-Size="Small" ForeColor="GrayText"></asp:Label>
        <asp:TextBox ID="utxt_dbname" runat="server" CssClass="txtmaster inputhome"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td class="style10" colspan="2" style="height: 20px">
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center" class="style11">
        <asp:ImageButton CommandName="anggaran" ID="ImageButton1" data-toggle="tooltip" title="budget"
          On runat="server" Width="70" Height="70" ImageUrl="images/2.png" onmouseover="this.src='images/2b.png';"
          onmouseout="this.src='images/2.png';" OnClick="ubtn_ok_Click" CausesValidation="false"
          class="img-responsive" Style="vertical-align: middle;" />
        <asp:ImageButton CommandName="kas" ID="ubtn_okk" data-toggle="tooltip" title="treasury"
          runat="server" Width="70" Height="70" ImageUrl="images/6.png" onmouseover="this.src='images/6b.png';"
          onmouseout="this.src='images/6.png';" OnClick="ubtn_ok_Click" CausesValidation="false"
          class="img-responsive" Style="vertical-align: middle;" />
        <asp:ImageButton CommandName="pembukuan" ID="ubtn_okkk" data-toggle="tooltip" title="accounting"
          runat="server" Width="70" Height="70" ImageUrl="images/3.png" onmouseover="this.src='images/3b.png';"
          onmouseout="this.src='images/3.png';" OnClick="ubtn_ok_Click" CausesValidation="false"
          class="img-responsive" Style="vertical-align: middle;" />
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center" class="style14">
        <asp:ImageButton CommandName="datamaster" ID="ubtn_okkkk" data-toggle="tooltip" title="master data"
          runat="server" Width="70" Height="70" ImageUrl="images/4.png" onmouseover="this.src='images/4b.png';"
          onmouseout="this.src='images/4.png';" OnClick="ubtn_ok_Click" CausesValidation="false"
          class="img-responsive" Style="vertical-align: middle;" />
        <asp:ImageButton CommandName="utility" ID="ubtn_okkkkk" data-toggle="tooltip" title="utility"
          runat="server" Width="70" Height="70" ImageUrl="images/1.png" onmouseover="this.src='images/1b.png';"
          onmouseout="this.src='images/1.png';" OnClick="ubtn_ok_Click" CausesValidation="false"
          class="img-responsive" Style="vertical-align: middle;" />
        <asp:ImageButton ID="ubtn_koneksi" data-toggle="tooltip" title="logout" runat="server"
          Width="70" Height="70" ImageUrl="images/7.png" onmouseover="this.src='images/7b.png';"
          onmouseout="this.src='images/7.png';" CausesValidation="false" class="img-responsive"
          Style="vertical-align: middle;" OnClick="ubtn_koneksi_Click" />
      </td>
    </tr>
    <tr>
      <%--    <td colspan="2" align="left" class="style3">
        <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('satu','','images/SIPKDR6_18b.jpg',1)">
          <img src="images/SIPKDR6_18.jpg" height="41" id="satu" border="0" /></a> <a href="#"
            onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('dua','','images/SIPKDR6_19b.jpg',1)">
            <img src="images/SIPKDR6_19.jpg" width="48" height="41" id="dua" border="0" /></a><a
              href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('tiga','','images/SIPKDR6_20b.jpg',1)">
              <img src="images/SIPKDR6_20.jpg" width="47" height="41" id="tiga" border="0" /></a><a
                href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('empat','','images/SIPKDR6_21bjpg.JPG',1)">
                <img src="images/SIPKDR6_21.jpg" width="48" height="41" id="empat" border="0" /></a><a
                  href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('lima','','images/SIPKDR6_23b.jpg',1)">
                  <img src="images/SIPKDR6_23.jpg" width="48" height="41" id="lima" border="0" /></a><a
                    href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('enam','','images/SIPKDR6_24b.jpg',1)">
                    <img src="images/SIPKDR6_24.jpg" height="41" id="enam" border="0" /></a>
      </td>--%>
    </tr>
    <tr>
      <td colspan="2">
        <asp:Label ID="ulbl_tglapp" runat="server" BackColor="Transparent" Font-Italic="True"
          Font-Size="8pt" Text="21/08/2008" ForeColor="Gray"></asp:Label>
        <img src="images/sipkd.png" width="122" height="36" border="0" style="float: right" />
      </td>
    </tr>
  </table>
  <%--  <table align=right>ccc</table>--%>
  <div id="apDiv0" align="center" class="style2">
    <table style="width: 99%" align="left">
      <tr>
        <td>
          <asp:Label ID="Lblinfo" runat="server" Font-Size="12pt" ForeColor="Red" Text="" AutoPostBack="True"
            TextMode="MultiLine" Width="90%" Height="90%"></asp:Label>
        </td>
      </tr>
      <tr align="center">
        <td style="text-align: right">
          <asp:Label ID="ulbl_tglapp0" runat="server" BackColor="Transparent" Font-Size="9pt"
            Text="EXPR" ForeColor="White"></asp:Label>
        </td>
      </tr>
      <tr>
        <td style="text-align: right">
          <asp:Label ID="ulbl_tglapp01" runat="server" Font-Size="8pt" Font-Bold="true" ForeColor="OrangeRed"
            Text="Update"></asp:Label>
        </td>
      </tr>
      <tr>
        <td style="text-align: right">
          <asp:Label ID="ulbl_tglapp02" runat="server" Font-Size="9pt" ForeColor="Gray" Text="Update"></asp:Label>
        </td>
      </tr>
    </table>
  </div>
  <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup " Style="display: none">
    <table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
      font-family: 'Trebuchet MS', Verdana, Arial; width: 100%; border-top-style: none;">
      <tr>
        <td style="height: 300px;" align="center">
          <table id="utbl_topi" cellspacing="0" cellpadding="0" style="width: 60%" border="0"
            class="tblhat">
            <tr>
              <td class="tdhatleft" style="width: 10px" width="10" height="20">
              </td>
              <td class="tdhat">
                <asp:Label ID="ulbl_Logon" runat="server" Text="LOG ON"></asp:Label>
              </td>
              <td class="tdhatright" style="width: 10px; height: 20">
              </td>
            </tr>
          </table>
          <table id="utbl_Login" class="tbllogin" style="width: 60%">
            <asp:Panel ID="Panel2" runat="server" Visible="false">
              <tr>
                <td class="tdlabellist" style="height: 23px; width: 40%">
                  <asp:Label ID="Label5" runat="server" Text="Server"></asp:Label>
                </td>
                <td class="tdinput" colspan="3" style="height: 23px">
                  <asp:TextBox ID="utxt_server" runat="server" CssClass="txtmaster" Width="70%" Text="(local)"></asp:TextBox>
                </td>
              </tr>
              <%-- <tr>
                <td class="tdlabellist" style="height: 23px; width: 40%">
                  <asp:Label ID="Label7" runat="server" Text="Sufix DB"></asp:Label>
                </td>
                <td class="tdinput" colspan="3" style="height: 23px">
                  <asp:TextBox ID="utxt_dbname" runat="server" CssClass="txtmaster" Width="70%" Text=""></asp:TextBox>
                </td>
              </tr>--%>
              <tr>
                <td class="tdlabellist">
                  <asp:Label ID="ulbl_Modul" runat="server" Text="Modul"></asp:Label>
                </td>
                <td colspan="3" class="tdinput">
                  <asp:DropDownList ID="uddl_Modul" runat="server" Width="70%">
                    <asp:ListItem Value="utility">Utility</asp:ListItem>
                    <asp:ListItem Value="datamaster">Data Master</asp:ListItem>
                    <asp:ListItem Value="perencanaan">Perencanaan</asp:ListItem>
                    <asp:ListItem Value="anggaran">Penganggaran</asp:ListItem>
                    <asp:ListItem Value="kas">Penatausahaan</asp:ListItem>
                    <asp:ListItem Value="pembukuan">Pertanggungjawaban</asp:ListItem>
                  </asp:DropDownList>
                </td>
              </tr>
            </asp:Panel>
            <%-- <tr>
              <td class="tdlabellist" style="height: 23px">
                <asp:Label ID="ulbl_Userid" runat="server" Text="User Id"></asp:Label>
              </td>
              <td class="tdinput" style="height: 23px">
                <asp:TextBox ID="utxt_Userid" runat="server" CssClass="txtmaster" Width="70%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="urfv_Userid" runat="server" ControlToValidate="utxt_Userid"
                  ErrorMessage="*)" Width="1px"></asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
              <td class="tdlabellist">
                <asp:Label ID="ulbl_Pwd" runat="server" Text="Password"></asp:Label>
              </td>
              <td class="tdinput">
                <asp:TextBox ID="utxt_Pwd" runat="server" CssClass="txtmaster" TextMode="Password"
                  Width="70%"></asp:TextBox>
              </td>
            </tr>
            <tr>
              <td class="tdlabellist">
                <asp:Label ID="ulbl_Thn" runat="server" Text="Tahun"></asp:Label>
              </td>
              <td class="tdinput">
                <asp:DropDownList ID="uddl_Thn" runat="server" Width="70%">
                </asp:DropDownList>
              </td>
            </tr>--%>
            <asp:Panel ID="Panel3" runat="server" Visible="true">
              <tr>
                <td class="tdlabellist">
                  <asp:Label ID="Label2" runat="server" Text="Theme"></asp:Label>
                </td>
                <td colspan="3" class="tdinput">
                  <asp:DropDownList ID="uddl_Theme" runat="server" Width="70%">
                    <asp:ListItem>Classic</asp:ListItem>
                    <asp:ListItem>Ext.NET</asp:ListItem>
                  </asp:DropDownList>
                </td>
              </tr>
            </asp:Panel>
          </table>
          <table id="utbl_Button" class="tbllogin" style="width: 60%">
            <tr>
              <td align="center">
                <asp:ImageButton ID="ubtn_ok" runat="server" ImageUrl="~/Images/bluelogin.gif" OnClick="ubtn_ok_Click" />
                <img id="ubtn_keluar" runat="server" src="~/Images/bluelogout.gif" onclick="$object('MPP1')._hide(); return false;" />
              </td>
            </tr>
          </table>
          <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
      </tr>
    </table>
  </asp:Panel>
  <div style="display: none; visibility: hidden;">
    <asp:Button runat="server" ID="hiddenButton1" />
    <asp:Button runat="server" ID="hiddenButton2" />
  </div>
  <atlasToolkit:ModalPopupExtender ID="MPE" runat="server">
    <atlasToolkit:ModalPopupProperties ID="MPP1" TargetControlID="hiddenButton1" PopupControlID="Panel1"
      BackgroundCssClass="modalBackground" />
  </atlasToolkit:ModalPopupExtender>
  <asp:HiddenField ID="utxt_value" runat="server" Value="0" />
  </form>
</body>
</html>
