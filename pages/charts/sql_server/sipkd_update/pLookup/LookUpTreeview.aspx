<%@ page language="C#" autoeventwireup="true" inherits="pLookUp_LookUpTreeview, App_Web_p4vdymow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>LookUp Treeview</title>
  <link href="../Css/Model.css" rel="stylesheet" type="text/css" />
  <base target="_self" />
  <meta http-equiv="Expires" content="0" />
  <meta http-equiv="Cache-Control" content="no-cache" />
  <meta http-equiv="Pragma" content="no-cache" />
  <script language="javascript" src="../js/lookup.js" type="text/javascript"></script>
  <script language="javascript" src="../js/common.js" type="text/javascript"></script>
</head>
<body>
  <form id="form1" runat="server">
  <center>
    <table id="tblHeader" cellpadding="2px" cellspacing="0" width="98%">
      <tr class="lookup-header">
        <td>
        </td>
        <td align="right">
          <asp:Button ID="ubtn_Reset" runat="server" CssClass="btnmaster" Text="Reset" OnClick="ubtn_Reset_Click" />
          <asp:Button ID="ubtn_Close" runat="server" CssClass="btnmaster" Text="Close" />
        </td>
      </tr>
    </table>
    <table id="utbl_topi" cellspacing="0" cellpadding="0" width="100%" border="0" class="tblhat">
      <tr>
        <td class="tdhatleft" style="width: 10px" width="10" height="20">
        </td>
        <td class="tdhat">
          DATA PENCARIAN
        </td>
        <td class="tdhatright" style="width: 10px; height: 20">
        </td>
      </tr>
    </table>
    <table id="Table1" width="98%" class="tblmaster">
      <tr>
        <td align="center">
          <div style="text-align: left; overflow: auto; width: 100%; height: 500px; border: solid 1px black">
            <asp:TreeView ID="TreeView1" runat="server" 
              OnSelectedNodeChanged="TreeView1_SelectedNodeChange" ForeColor="#333333">
            </asp:TreeView>
          </div>
          <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red"></asp:Label>
        </td>
      </tr>
    </table>
  </center>
  </form>
</body>
</html>
