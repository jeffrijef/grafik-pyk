<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Download, App_Web_thj50hhy" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <p>
  </p>
  <br />
  <table width="100%">
    <tr align="center" width="100%">
      <td>
        <asp:Panel ID="pnlUpload" runat="server" Width="100%">
          <table id="Table1" cellspacing="0" cellpadding="0" style="width: 75%" border="0">
            <tr>
              <td class="tdlabel">
                <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label>
              </td>
              <td class="tdinput">
                <input type="file" id="File1" runat="server" style="width: 80%" />
              </td>
            </tr>
            <tr>
              <td colspan="3" align="left" style="height: 27px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                  OnClick="ubtn_Save_Click" ToolTip="Simpan data" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/bluekembali.gif"
                  CausesValidation="false" OnClick="ubtn_Cancel_Click" ToolTip="Batal" Visible="false" />
            </tr>
            <tr>
              <td colspan="3">
                <asp:Label ID="ulbl_error" runat="server" Style="width: 95%" />
              </td>
            </tr>
          </table>
        </asp:Panel>
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
                        <asp:ButtonField HeaderText="Nama Dokumen" DataTextField="Name" ItemStyle-Width="40%">
                        </asp:ButtonField>
                        <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Center"
                          Visible="false">
                          <HeaderTemplate>
                            Nama Dokumen</HeaderTemplate>
                          <ItemTemplate>
                            <asp:Label runat="server" ID="lblDocName" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>'></asp:Label>
                          </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField HeaderText="Keterangan" DataField="LastWriteTime"></asp:BoundField>
                        <%--    <asp:BoundField HeaderText="Keterangan" DataField="Uraian">
              </asp:BoundField>
                        --%>
                        <asp:TemplateField>
                          <HeaderTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server" AutoPostBack="True" OnCheckedChanged="chkSelect_CheckedChanged" />
                          </HeaderTemplate>
                          <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chkDelete" />
                          </ItemTemplate>
                        </asp:TemplateField>
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
                    <div style="display: none; visibility: hidden;">
                      <asp:ImageButton ID="ubtn_Add" runat="server" ImageUrl="~/Images/bluetambah.gif"
                        CausesValidation="true" OnClick="ubtn_Add_Click" ToolTip="Penambahan data" />
                      <asp:HiddenField ID="utxt_Param" runat="server" />
                      &nbsp;
                    </div>
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
              <%--<table id="utbl_form" cellspacing="0" cellpadding="0" style="width: 95%" border="0">
          <tr>
            <td class="tdlabel">
              <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label>
            </td>
            <td class="tdinput">
              <input type="file" id="File2" runat="server" style="width:95%" />
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
        </table>--%>
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
      </td>
    </tr>
  </table>
</asp:Content>
