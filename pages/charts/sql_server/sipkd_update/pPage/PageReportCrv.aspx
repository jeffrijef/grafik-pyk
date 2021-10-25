<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pPageReportCrv, App_Web_oselwu5t" %>

<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
  Namespace="eWorld.UI" TagPrefix="ew" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register TagPrefix="cx" TagName="FormEntry" Src="../Ascx/FormEntry.ascx" %>
<%@ Register TagPrefix="cx" TagName="ViewList" Src="../Ascx/ViewList.ascx" %>

<%--<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
--%>
<asp:Content ID="ucon_list" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
<asp:Panel ID="upnl_form_filter" runat="server" width="100%" Visible="false">
  <table id="utbl_judul_filter" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
    <tr>
      <td class="tdhatleft" style="width: 10px;height:20"></td>
      <td class="tdhat">
        <asp:Label ID="ulbl_title_filter" runat="server" Text="Parameter"></asp:Label></td>
      <td class="tdhatright" style="width: 10px;height:20"></td>
    </tr>
  </table>
  <table id="utbl_form_filter" cellpadding="3" cellspacing="0" border="0" class="tblmaster75">
  <tr>
    <td>
      <cx:FormEntry ID="ugrv_filter" runat="server" /> 
    </td>
  </tr>
  </table>
<table id="Table1" class="tblmaster75">
  <tr>
    <td colspan="4" align="Center">
      <asp:LinkButton ID="ulink_file" runat="server" ForeColor="Blue" Text="Link" 
        onclick="ulink_file_Click" visible="false"></asp:LinkButton>
    </td>
  </tr>
</table>
</asp:Panel>

<table id="utbl_Cetak" class="tblmaster75">
  <tr>
    <td colspan="4" align="Center">
      <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red"></asp:Label>
    </td>
  </tr>
  <tr>
    <td colspan="4" align="left">
      <asp:ImageButton ID="ubtn_Print" runat="server" ImageUrl="~/Images/bluecetak.gif" CausesValidation="false" 
              OnClick="ubtn_Print_Click" ToolTip="Cetak data" />
    </td>
  </tr>
</table>
      
  <br />
<iframe runat="server" id="ifrm" name="ifrm" scrolling="auto" width="80%" height="100%" frameborder="1">
 [Content for browsers that don't support iframes goes here.]
</iframe>
</asp:Content>

