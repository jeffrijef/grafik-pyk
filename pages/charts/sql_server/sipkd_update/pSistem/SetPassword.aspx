<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_SetPassword, App_Web_thj50hhy" title="Set Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
<table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px; font-family: 'Trebuchet MS', Verdana, Arial; width: 100%;">
<tr>
  <td style="height: 300px;" align="center">
    <table id="utbl_topi" cellspacing="0" cellpadding="0" style="width: 35%" border="0" class="tblhat">
    <tr>
		  <td class="tdhatleft" style="width:10px;height:20"></td>
		  <td class="tdhat">UBAH PASSWORD</td>
		  <td class="tdhatright" style="width: 10px;height:20"></td>
		</tr>
    </table>
    <table id="utbl_Status" class="tbllogin" style="width: 35%">
    <tr>
      <td class="tdlabellist">
        <asp:Label ID="ulbl_Userid" runat="server" Text="Password"></asp:Label>
      </td>
      <td class="tdinput" colspan="3">
        <asp:TextBox ID="utxt_Pwd" runat="server" CssClass="txtmaster" TextMode="Password" width="98%"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td class="tdlabellist">
        <asp:Label ID="ulbl_Pwd" runat="server" Text="Password Baru"></asp:Label>
      </td>
      <td colspan="3" class="tdinput" >
        <asp:TextBox ID="utxt_NewPwd" runat="server" CssClass="txtmaster" TextMode="Password" width="98%"></asp:TextBox>
      </td>
    </tr>
    <tr>
        <td class="tdlabellist" style="width: 40%">
          <asp:Label ID="ulbl_UlangPwd" runat="server" Text="Ulangi Password Baru"></asp:Label></td>
        <td colspan="3" class="tdinput">
          <asp:TextBox ID="utxt_UlangPwd" runat="server" CssClass="txtmaster" TextMode="Password" width="98%"></asp:TextBox></td>
    </tr>
    <tr>
      <td align="right" colspan ="4" >
        <asp:ImageButton ID="ubtn_ubah" runat="server" ImageUrl="~/Images/blueubah.gif" OnClick="ubtn_ubah_Click" />
      </td>              
    </tr>
  </table>
  </td>
</tr>
</table>
</asp:Content>

