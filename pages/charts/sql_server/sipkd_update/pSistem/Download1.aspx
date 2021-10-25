<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Download1, App_Web_thj50hhy" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <asp:Panel ID="upnl_form_filter" runat="server" Width="100%" Visible="true">
    <mwa:UpdatePanel ID="UpdatePanel2" runat="server" Mode="Always" EnableViewState="true"
      RenderMode="Block">
      <ContentTemplate>
    <table id="utbl_topi" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
      <tr>
        <td class="tdhatleft" style="width: 10px; height: 20">
        </td>
        <td class="tdhat">
          <asp:Label ID="ulbl_title_list" runat="server" Text="Download Dokumen"></asp:Label>
        </td>
        <td class="tdhatright" style="width: 10px; height: 20">
        </td>
      </tr>
    </table>
    <table id="utbl_list" class="tblmaster75">
      <tr>
        <td>
          <asp:GridView ID="ugrv_list" runat="server" CellPadding="3" runat="server" PageSize="10"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" AllowPaging="True"
            AutoGenerateColumns="False" EmptyDataText="Tidak ditemukan data pada database"
            CssClass="grvmaster" OnPageIndexChanging="ugrv_list_PageIndexChanging" OnRowCommand="ugrv_list_RowCommand">
            <FooterStyle BackColor="White" ForeColor="#000066" CssClass="tdcenter" />
            <Columns>
              <asp:ButtonField HeaderText="Nama Dokumen" DataTextField="Name" ItemStyle-Width="10%">
              </asp:ButtonField>
              <asp:BoundField HeaderText="Keterangan" DataField="LastWriteTime"></asp:BoundField>
              <%--    <asp:BoundField HeaderText="Keterangan" DataField="Uraian">
    </asp:BoundField>
--%>
            </Columns>
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Maroon" />
            <PagerStyle BackColor="White" ForeColor="#000066" Wrap="True" HorizontalAlign="Left" />
            <HeaderStyle BackColor="#9ea2a2" Font-Bold="True" ForeColor="White" />
          </asp:GridView>
        </td>
      </tr>
    </table>
    <table id="Table11" class="tblmaster75">
      <tr>
        <td align="left" colspan="3" style="height: 20px">
          <asp:ImageButton ID="ubtn_Add" runat="server" ImageUrl="~/Images/bluetambah.gif"
            CausesValidation="true" OnClick="ubtn_Add_Click" ToolTip="Penambahan data" />
          <asp:HiddenField ID="utxt_Param" runat="server" />
          &nbsp;
        </td>
        <td align="right" colspan="1" style="height: 20px">
          <asp:ImageButton ID="ubtn_Delete" runat="server" ImageUrl="~/Images/bluehapus.gif"
            OnClick="ubtn_Delete_Click" CausesValidation="false" />
        </td>
      </tr>
    </table>
    </ContentTemplate>
    </mwa:UpdatePanel>
  </asp:Panel>
  <asp:Panel ID="upnl_form_detil" runat="server" CssClass="modalPopup" Style="display: none">
    <mwa:UpdatePanel ID="UpdatePanel1" runat="server" Mode="Always" EnableViewState="true"
      RenderMode="Block">
      <ContentTemplate>
        <table id="utbl_form1" cellspacing="0" cellpadding="0" style="width: 95%" border="0"
          class="tblhat">
          <tr>
            <td class="tdhatdetilleft" style="width: 10px; height: 20">
            </td>
            <td class="tdhatdetil" align="center">
              <asp:Label ID="ulbl_title_form" runat="server" Text="Upload Dokumen"></asp:Label>
            </td>
            <td class="tdhatdetilright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_form" cellspacing="0" cellpadding="0" style="width: 95%" border="0"
          <tr>
            <td class="tdlabel">
              <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label>
            </td>
            <td class="tdinput">
              <input type="file" id="File1" runat="server" style="width:95%" />
            </td>
          </tr>
          <tr>
            <td colspan="3" align="left" style="height: 27px">
            <input type="submit" id="Submit1" value="Upload" runat="server" name="Submit1"/>
              <asp:ImageButton ID="ubtn_Save" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                OnClick="ubtn_Save_Click" ToolTip="Simpan data" />
              <asp:ImageButton ID="ubtn_Cancel" runat="server" ImageUrl="~/Images/bluekembali.gif"
                CausesValidation="false" OnClick="ubtn_Cancel_Click" ToolTip="Batal" />
          </tr>
          <tr>
            <td colspan="3">
              <asp:Label ID="ulbl_error" runat="server" style="width:95%" />
            </td>
          </tr>
        </table>
      </ContentTemplate>
    </mwa:UpdatePanel>
  </asp:Panel>
  <div style="display: none; visibility: hidden;">
    <asp:Button runat="server" ID="hiddenButton" />
  </div>
  <act:ModalPopupExtender ID="MPE" runat="server">
    <act:ModalPopupProperties ID="MPP1" TargetControlID="hiddenButton" PopupControlID="upnl_form_detil"
      BackgroundCssClass="modalBackground" />
  </act:ModalPopupExtender>
</asp:Content>
