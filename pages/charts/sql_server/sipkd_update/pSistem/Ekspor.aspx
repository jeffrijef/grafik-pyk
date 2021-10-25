<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Ekspor, App_Web_thj50hhy" title="Operasi Database" %>
<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
  <asp:Panel ID="Panel3" runat="server" width="95%">
  <table id="utbl_judul_filter" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
  <tr>
    <td class="tdhatleft" style="width: 10px;height:20"></td>
    <td class="tdhat">
      <asp:Label ID="ulbl_title_filter" runat="server" Text="Unit Organisasi"></asp:Label></td>
    <td class="tdhatright" style="width: 10px;height:20"></td>
  </tr>
</table>
<table id="utbl_List1" class="tblmaster75">
  <tr>
    <td class="tdlabel">
      <asp:Label ID="Label4" runat="server" Text="Pilih Data"></asp:Label></td>
    <td align="left" style="height: 24px; width: 533px;">
      <asp:DropDownList ID="uddl_data" runat="server" width="70%">
      </asp:DropDownList>
    </td>
  </tr>
  <tr class="trhide">
  <td  style="width: 12%; height: 27px;"></td>
  <td align="left" style="width: 88%;">
    <asp:TextBox ID="otxt_Unitkey" runat="server" Width="20%"></asp:TextBox>
    <asp:TextBox ID="utxt_replace" runat="server" Width="20%"></asp:TextBox>
  </td>
</tr>
  <tr>
    <td class="tdlabel">
      <asp:Label ID="Label2" runat="server" Text="Unit Organisasi"></asp:Label></td>
    <td align="left" style="height: 24px; width: 533px;">
      <asp:TextBox ID="utxt_Kdunit" runat="server" Width="20%"></asp:TextBox>
    <asp:ImageButton ID="ubtn_Lookup" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
      ImageUrl="~/Images/IconAdvSearch_old.gif" OnClick="ubtn_Lookup_Click" />
    <asp:TextBox ID="utxt_Nmunit" runat="server" Width="70%"></asp:TextBox></td>
  </tr>
  <tr>
    <td class="tdlabel">
      <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label></td>
    <td class="tdinput">
      <asp:TextBox ID="utxt_file" runat="server" Width="80%"></asp:TextBox>
      <asp:Button ID="Browse" runat="server" Text="Browse"  /></td>
  </tr>
  <tr>
    <td class="tdlabel">
      <asp:Label ID="Label1" runat="server" Text="Tahun Database"></asp:Label></td>
    <td class="tdinput">
      <asp:DropDownList ID="uddl_Thn" runat="server" width="15%"></asp:DropDownList>
    </td>
  </tr>
  <tr class="trhide">
    <td class="tdlabel">
      <asp:Label ID="ulbl_olddb" runat="server" Text="Nama Database"></asp:Label>
    </td>
    <td class="tdinput">
      <asp:TextBox ID="utxt_olddb" runat="server" Width="80%"></asp:TextBox>&nbsp;
    </td>
  </tr>
  <tr class="trhide">
    <td class="tdlabel">
      <asp:Label ID="ulbl_newdb" runat="server" Text="Nama Database Baru"></asp:Label>
    </td>
    <td class="tdinput">
      <asp:TextBox ID="utxt_newdb" runat="server" Width="80%"></asp:TextBox>
      <asp:CheckBox ID="uchk_Replace" runat="server" Checked="True" Text="Replace Data"
        Visible="False" />
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center" style="height: 20px" >
      <center>
      <asp:Button ID="ubtn_exec" runat="server"  
            Text="Kirim" OnClick="ubtn_exec_Click" />
      <asp:Button ID="ubtn_reset" runat="server"  
            Text="Reset" OnClick="ubtn_reset_Click" />
      </center>
    </td>
  </tr>
  <tr>
  <asp:Panel runat="server" ID="upnl_link" Visible="false">
    <td class="tdlabel">
      <asp:Label ID="Label5" runat="server" Text="Download File"></asp:Label>
    </td>
    <td colspan="3" class="tdinput">
      <asp:LinkButton ID="ulink_download" runat="server" Text="Download File" OnClick="ulink_download_Click"></asp:LinkButton>
    </td>
  </asp:Panel>
  </tr>
  <tr>
    <td colspan="2" style="height: 20px; text-align: left">
      <asp:Label ID="ulbl_error" runat="server"></asp:Label></td>
  </tr>
</table>
</asp:Panel>
<asp:Panel ID="Panel1" runat="server" width="95%" Visible="false">
<table id="Table1" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
  <tr>
    <td class="tdhat">
      Terima Data PPAS</td>
  </tr>
</table>
<table id="Table2" class="tblmaster75">
  <tr>
    <td class="tdlabel">
      <asp:Label ID="Label9" runat="server" Text="Tahun Database"></asp:Label></td>
    <td class="tdinput">
      <asp:DropDownList ID="uddl_thang" runat="server" width="20%">
      </asp:DropDownList>
    </td>
  </tr>
  <tr>
    <td align="center" colspan="2" style="height: 20px">
      <center>
        <asp:Button ID="Terima" runat="server" OnClick="ubtn_exec_Click" Text="OK" />
      </center>
    </td>
  </tr>
  <tr>
   </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false">
      <td class="tdlabel">
        <asp:Label ID="Label12" runat="server" Text="Download File"></asp:Label>
      </td>
      <td class="tdinput" colspan="3">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ulink_download_Click" 
          Text="Download File"></asp:LinkButton>
      </td>
    </asp:Panel>
  </tr>
</table>
</asp:Content>

