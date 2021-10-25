<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_SetPeriode, App_Web_thj50hhy" title="Set Periode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
<table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px; font-family: 'Trebuchet MS', Verdana, Arial; width: 100%;">
<tr>
  <td style="height: 300px;" align="center">
    <table id="utbl_topi" cellspacing="0" cellpadding="0" style="width: 50%" border="0" class="tblhat">
	  <tr>
		  <td class="tdhatleft" style="width: 10px; height: 20px;"></td>
		<td class="tdhat" style="height: 20px">
            SET PERIODE</td>
		<td class="tdhatright" style="width: 10px; height: 20px;"></td>
		</tr>
    </table>
    <table id="utbl_Status" class="tbllogin" style="width: 50%">
    <tr>
      <td class="tdlabellist">
        <asp:Label ID="ulbl_Userid" runat="server" Text="User Id"></asp:Label>
      </td>
      <td class="tdinput" colspan="3">
        <asp:TextBox ID="utxt_Userid" runat="server" CssClass="txtmaster" width="31%"></asp:TextBox>
        <asp:ImageButton ID="ubtn_Lookup" runat="server" ImageUrl="~/Images/IconAdvSearch_old.gif" ImageAlign="AbsMiddle" />
        <asp:TextBox ID="utxt_Nama" runat="server" CssClass="txtmaster" Width="57%"></asp:TextBox></td>
    </tr>
    <tr>
      <td class="tdlabellist">
        <asp:Label ID="ulbl_Tahap" runat="server" Text="Tahun"></asp:Label></td>
      <td class="tdinput" colspan="3">
        <asp:DropDownList ID="uddl_Periode" runat="server" CssClass="ddlmaster" AutoPostBack="True">
        </asp:DropDownList>&nbsp;
      </td>
    </tr>
    <tr>
      <td align="right" colspan ="4" >
        <asp:ImageButton ID="ubtn_ok" runat="server" ImageUrl="~/Images/blueok.gif" OnClick="ubtn_ok_Click" />
      </td>              
    </tr>
    </table>
  </td>
</tr>
</table>
</asp:Content>

