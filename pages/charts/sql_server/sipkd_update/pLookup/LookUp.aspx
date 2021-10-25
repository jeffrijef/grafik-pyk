<%@ page language="C#" autoeventwireup="true" inherits="LookUp, App_Web_p4vdymow" %>

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

</head>
<body style="font-family: Trebuchet MS; font-size: 8pt">
  <form id="form1" runat="server">
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
  <table id="tblParameter" cellpadding="2px" cellspacing="0" width="100%">
    <tr>
      <td align="center">
        <table id="utbl_Judul" cellspacing="0" cellpadding="0" border="0" class="tblhat">
          <tr>
            <td class="tdhatdetilleft" style="width: 10px; height: 20">
            </td>
            <td class="tdhatdetil" align="center">
              <asp:Label ID="ulbl_Judul" runat="server" Text="LOOK UP DATA"></asp:Label>
            </td>
            <td class="tdhatdetilright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_lookup" class="tblmaster">
          <tr>
            <td colspan="4" align="left">
              <asp:Repeater ID="urpt_Parameters" runat="server">
                <ItemTemplate>
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr class="normal">
                      <td style="width: 30%" class="tdlabel">
                        <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ParameterName") %>'></asp:Label>
                      </td>
                      <td style="width: 70%" class="tdinput">
                        <asp:TextBox class="txtmaster" ID="TextBox1" runat="server" ToolTip='<%# DataBinder.Eval(Container.DataItem, "ControlName") %>'></asp:TextBox>
                      </td>
                    </tr>
                  </table>
                </ItemTemplate>
              </asp:Repeater>
            </td>
          </tr>
          <tr>
            <td align="left">
              <asp:Button ID="ubtn_Search" runat="server" CssClass="btnmaster" Text="Search" OnClick="ubtn_Search_Click" />
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <table id="tblResult" cellpadding="2px" cellspacing="0" width="100%">
    <tr>
      <td style="width: 726px" align="Center">
        <table id="utbl_topi" cellspacing="0" cellpadding="0" width="100%" border="0" class="tblhat">
          <tr>
            <td class="tdhatdetilleft" style="width: 10px" width="10" height="20">
            </td>
            <td class="tdhatdetil">
              DATA PENCARIAN
            </td>
            <td class="tdhatdetilright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_list" class="tblmaster">
          <tr>
            <td colspan="4" align="left">
              <asp:GridView ID="ugvw_LookUp" runat="server" AutoGenerateColumns="False" Width="100%"
                OnPageIndexChanging="ugvw_LookUp_PageIndexChanging" OnSelectedIndexChanged="ugvw_LookUp_SelectedIndexChanged"
                CellPadding="4" AllowPaging="True" ForeColor="#333333" CssClass="grvmaster" EmptyDataText="Tidak ditemukan data pada database">
                <Columns>
                  <asp:CommandField ShowSelectButton="True" HeaderText="Pilih">
                    <ItemStyle ForeColor="#333333" />
                  </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#efefef" ForeColor="#000066" CssClass="tdcenter" />
                <RowStyle BackColor="#e4e4e4" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle ForeColor="#333333" HorizontalAlign="Center" BackColor="Control" />
                <HeaderStyle BackColor="Control" Font-Bold="True" ForeColor="#333333" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
              </asp:GridView>
            </td>
          </tr>
        </table>
        <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red"></asp:Label>
      </td>
    </tr>
  </table>
  </form>
</body>
</html>
