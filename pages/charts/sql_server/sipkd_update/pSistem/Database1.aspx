<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Database1, App_Web_thj50hhy" title="Database Utility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
  &nbsp;<table style="width: 50%">
    <tr>
      <td style="width: 50%">
        <asp:Label ID="ulbl_file" runat="server" Text="Pilih Lokasi File"></asp:Label></td>
      <td style="text-align: left">
        <asp:TextBox ID="utxt_file" runat="server" Width="90%"></asp:TextBox></td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="ulbl_olddb" runat="server" Text="Nama Database Backup"></asp:Label></td>
      <td style="text-align: left">
        <asp:TextBox ID="utxt_olddb" runat="server" Width="90%"></asp:TextBox></td>
    </tr>
    <tr>
      <td>
        <asp:Label ID="ulbl_newdb" runat="server" Text="Nama Database Baru"></asp:Label></td>
      <td style="text-align: left">
        <asp:TextBox ID="utxt_newdb" runat="server" Width="90%"></asp:TextBox></td>
    </tr>
    <tr>
      <td>
      </td>
      <td style="text-align: left">
        <asp:Button ID="ubtn_exec" runat="server" OnClick="Button1_Click" Text="Button" /></td>
    </tr>
    <tr>
      <td style="text-align: left" colspan="2">
        <asp:Label ID="ulbl_error" runat="server"></asp:Label></td>
    </tr>
  </table>
</asp:Content>

