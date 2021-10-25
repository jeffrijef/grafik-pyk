<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Log, App_Web_thj50hhy" title="Log" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
  &nbsp;<table style="width: 80%">
    <tr>
      <td>
        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Calibri" Font-Size="11pt" 
          Height="259px" Rows="5" Width="100%"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Button ID="ubtn_exec" runat="server" OnClick="Button1_Click" Text="Button" Height="30"/>
      </td>
    </tr>
    <tr>
      <td style="text-align: left">
        <asp:Label ID="ulbl_error" runat="server"></asp:Label></td>
    </tr>
  </table>
</asp:Content>

