<%@ page language="C#" autoeventwireup="true" inherits="About, App_Web_gly0oex0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <div style="padding-top: 100px">
    <center>
      <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Application Info"></asp:Label>
      </p>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True"
        Width="50%">
        <Columns>
          <asp:BoundField DataField="Field" HeaderText="Uraian">
            <ItemStyle Width="30%" HorizontalAlign="Left" />
          </asp:BoundField>
          <asp:BoundField DataField="Value" HeaderText="Nilai">
            <ItemStyle HorizontalAlign="Left" />
          </asp:BoundField>
        </Columns>
      </asp:GridView>
    </center>
    <asp:Panel ID="Panel1" runat="server" Visible="true" HorizontalAlign="Center">
      <table id="Table1" cellspacing="0" cellpadding="0" style="width: 75%" border="0">
        <tr>
          <td class="tdlabel">
            <asp:Label ID="ulbl_file" runat="server" Text="Nama File" Visible="false"></asp:Label>
          </td>
          <td class="tdinput">
            <input type="file" id="File1" runat="server" style="width: 80%"  Visible="false"/>
          </td>
        </tr>
        <tr>
          <td class="tdlabel">
          </td>
          <td align="center" style="height: 27px">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/bluesimpan.gif"
              OnClick="ubtn_Save_Click" ToolTip="Simpan data" Visible="false"/>
          </td>
        </tr>
      </table>
    </asp:Panel>
  </div>
  </form>
</body>
</html>
