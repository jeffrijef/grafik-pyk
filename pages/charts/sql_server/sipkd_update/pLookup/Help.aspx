<%@ page language="C#" autoeventwireup="true" inherits="Help, App_Web_p4vdymow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta http-equiv="Expires" content="0" />
  <meta http-equiv="Cache-Control" content="no-cache" />
  <meta http-equiv="Pragma" content="no-cache" />
  <title>Look Up</title>
  <base target="_self" />
  <link href="../Css/Model.css" rel="stylesheet" type="text/css" />

  <script language="javascript" src="../js/lookup.js" type="text/javascript"></script>

  <script language="javascript" src="../js/common.js" type="text/javascript"></script>

  <style type="text/css">
    .style1
    {
      width: 174px;
    }
  </style>
</head>
<body style="font-family: Trebuchet MS; font-size: 8pt">
  <form id="form1" runat="server">
  <table id="tblHeader" cellpadding="2px" cellspacing="0" width="98%">
    <tr class="lookup-header">
      <td class="style1">
        &nbsp;</td>
      <td align="right">
        <asp:Panel ID="Panel1" runat="server" Height="370px">
        </asp:Panel>
      </td>
    </tr>
  </table>
  </form>
</body>
</html>
