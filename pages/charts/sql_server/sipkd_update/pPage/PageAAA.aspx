<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pPageAA4, App_Web_oselwu5t" enableviewstate="true" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>
<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register TagPrefix="cx" TagName="FormEntry" Src="../Ascx/FormEntry.ascx" %>
<%@ Register TagPrefix="cx" TagName="ViewList" Src="../Ascx/ViewList.ascx" %>
<%@ Register TagPrefix="cx" TagName="ViewList2" Src="../Ascx/ViewList2.ascx" %>
<asp:Content ID="ucon_list" ContentPlaceHolderID="ucon_Master_List" runat="Server">
<center>
  <script type="text/javascript"> 
    function OnCheckBoxCheckChanged(evt) { 
        var src = window.event != window.undefined ? window.event.srcElement : evt.target; 
        var isChkBoxClick = (src.tagName.toLowerCase() == "input" && src.type == "checkbox"); 
        if (isChkBoxClick) { 
            var parentTable = GetParentByTagName("table", src); 
            var nxtSibling = parentTable.nextSibling; 
            if (nxtSibling && nxtSibling.nodeType == 1)//check if nxt sibling is not null & is an element node 
            { 
                if (nxtSibling.tagName.toLowerCase() == "div") //if node has children 
                { 
                    //check or uncheck children at all levels 
                    CheckUncheckChildren(parentTable.nextSibling, src.checked); 
                } 
            } 
            //check or uncheck parents at all levels 
            //CheckUncheckParents(src, src.checked); 
        } 
    } 
    function CheckUncheckChildren(childContainer, check) { 
        var childChkBoxes = childContainer.getElementsByTagName("input"); 
        var childChkBoxCount = childChkBoxes.length; 
        for (var i = 0; i < childChkBoxCount; i++) { 
            childChkBoxes[i].checked = check; 
        } 
    } 
    function CheckUncheckParents(srcChild, check) { 
        var parentDiv = GetParentByTagName("div", srcChild); 
        var parentNodeTable = parentDiv.previousSibling; 

        if (parentNodeTable) { 
            var checkUncheckSwitch; 

            if (check) //checkbox checked 
            { 
                var isAllSiblingsChecked = AreAllSiblingsChecked(srcChild); 
                if (isAllSiblingsChecked) 
                    checkUncheckSwitch = true; 
                else 
                    return; //do not need to check parent if any(one or more) child not checked 
            } 
            else //checkbox unchecked 
            { 
                checkUncheckSwitch = false; 
            } 

            var inpElemsInParentTable = parentNodeTable.getElementsByTagName("input"); 
            if (inpElemsInParentTable.length > 0) { 
                var parentNodeChkBox = inpElemsInParentTable[0]; 
                parentNodeChkBox.checked = checkUncheckSwitch; 
                //do the same recursively 
                CheckUncheckParents(parentNodeChkBox, checkUncheckSwitch); 
            } 
        } 
    } 
    function AreAllSiblingsChecked(chkBox) { 
        var parentDiv = GetParentByTagName("div", chkBox); 
        var childCount = parentDiv.childNodes.length; 
        for (var i = 0; i < childCount; i++) { 
            if (parentDiv.childNodes[i].nodeType == 1) //check if the child node is an element node 
            { 
                if (parentDiv.childNodes[i].tagName.toLowerCase() == "table") { 
                    var prevChkBox = parentDiv.childNodes[i].getElementsByTagName("input")[0]; 
                    //if any of sibling nodes are not checked, return false 
                    if (!prevChkBox.checked) { 
                        return false; 
                    } 
                } 
            } 
        } 
        return true; 
    } 
    //utility function to get the container of an element by tagname 
    function GetParentByTagName(parentTagName, childElementObj) { 
        var parent = childElementObj.parentNode; 
        while (parent.tagName.toLowerCase() != parentTagName.toLowerCase()) { 
            parent = parent.parentNode; 
        } 
        return parent; 
    }
  </script>

  <asp:Panel ID="pnl_lookup" runat="server" Width="100%" Visible="false">
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
  </asp:Panel>
  <mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <asp:Panel ID="upnl_form_filter" runat="server" Width="100%" Visible="true">
        <table id="utbl_judul_filter" cellspacing="0" cellpadding="0" width="98%" border="0"
          class="tblhat75">
          <tr>
            <td class="tdhatleft" style="width: 10px; height: 20">
            </td>
            <td class="tdhat">
              <asp:Label ID="ulbl_title_filter" runat="server" Text="Parameter"></asp:Label>
            </td>
            <td class="tdhatright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_form_filter" cellpadding="3" cellspacing="0" border="0" class="tblmaster75">
          <tr>
            <td>
              <cx:FormEntry ID="ugrv_filter" runat="server" />
            </td>
          </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="upnl_filter_footer" runat="server" Width="100%" Visible="false">
        <table id="Table6" class="tblmaster75">
          <tr>
            <td align="left" colspan="3" style="height: 20px">
              <asp:ImageButton ID="ubtn_Add0" runat="server" ImageUrl="~/Images/bluetambah.gif"
                ToolTip="Penambahan data akar" OnClick="ubtn_Add_Click" Visible="false" />
              <asp:ImageButton ID="ubtn_Edit0" runat="server" ImageUrl="~/Images/blueubah.gif"
                Visible="false" OnClick="ubtn_Add_Click" CausesValidation="false" />
              <asp:ImageButton ID="ubtn_Save0" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                Visible="false" OnClick="ubtn_Save_Click" CausesValidation="true" />
              <asp:ImageButton ID="ubtn_Back0" runat="server" ImageUrl="~/Images/bluekembali.gif"
                Visible="false" OnClick="ubtn_Add_Click" CausesValidation="false" />
            </td>
            <td align="right" colspan="1" style="height: 20px">
              <asp:ImageButton ID="ubtn_Del0" runat="server" ImageUrl="~/Images/bluehapus.gif"
                Visible="false" OnClick="ubtn_Delete_Click" />
            </td>
          </tr>
        </table>
      </asp:Panel>
    </ContentTemplate>
    <Triggers>
      <mwa:ControlEventTrigger ControlID="ubtn_Neraca" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_Pendapatan" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_Belanja" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_Pembiayaan" EventName="Click" />
    </Triggers>
  </mwa:UpdatePanel>
  <asp:Panel ID="upnl_find" runat="server" Width="100%" Visible="false">
    <table id="utbl_find" class="tblhat75">
      <tr>
        <td class="tdlabellist">
          Pencarian
        </td>
        <td colspan="2" align="left">
          <asp:TextBox ID="utxt_value" runat="server" CssClass="txtmaster"></asp:TextBox>
          <asp:DropDownList ID="uddl_field" runat="server" CssClass="ddlmaster" Height="20px">
            <asp:ListItem Value="1">Kode</asp:ListItem>
            <asp:ListItem Value="2">Uraian</asp:ListItem>
          </asp:DropDownList>
          <asp:ImageButton ID="ubtn_Find" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/bluecari.gif"
            OnClick="ubtn_Find_Click" CausesValidation="false" />
          <asp:Image ID="uimg_help" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/help1.jpg"
            onclick="$object('MPPHelp')._show(); return false;" />
          <asp:Image ID="uimg_user" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/user.gif"
            onclick="$object('MPPUser')._show(); return false;" />
        </td>
      </tr>
    </table>
  </asp:Panel>
  <mwa:UpdatePanel ID="upnl_list_detil" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <asp:Panel ID="pnl_list_detil" runat="server">
        <table id="utbl_topi" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
          <tr>
            <td colspan="3">
              <div id="divImage" style="display: none; font-style: oblique;">
                <%--                <asp:Image ID="img1" runat="server" ImageUrl="~/images/progress.gif" /> 
--%>
                Processing...
              </div>
            </td>
          </tr>
          <tr>
            <td class="tdhatleft" style="width: 10px; height: 20">
            </td>
            <td class="tdhat">
              <asp:Label ID="ulbl_title_list" runat="server" Text="Sifat Kegiatan"></asp:Label>
            </td>
            <td class="tdhatright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_list" class="tblmaster75">
          <tr>
            <asp:Panel ID="Tab1" runat="server">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Neraca" runat="server" SkinID="1" OnClick="LinkStatus" Text="Neraca"
                  CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="Tab2" runat="server">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Pendapatan" runat="server" SkinID="2" OnClick="LinkStatus"
                  Text="Pendapatan" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="Tab3" runat="server" Visible="false">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Belanja" runat="server" SkinID="3" OnClick="LinkStatus"
                  Text="Belanja" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="Tab4" runat="server" Visible="false">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Pembiayaan" runat="server" SkinID="4" OnClick="LinkStatus"
                  Text="Pembiayaan" CausesValidation="false" />
              </td>
            </asp:Panel>
          </tr>
          <tr>
            <td colspan="4" class="tblmaster75">
              <cx:ViewList2 ID="ugrv_list" runat="server" />
            </td>
          </tr>
          <tr>
            <td colspan="4" align="center">
              <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red" Text="Test"></asp:Label>
              <asp:ListBox ID="ulist_error" runat="server" Height="200" Width="100%"></asp:ListBox>
            </td>
          </tr>
        </table>
        <table id="Table11" class="tblmaster75">
          <tr>
            <td align="left" colspan="3" style="height: 20px">
              <asp:ImageButton ID="ubtn_Add" runat="server" ImageUrl="~/Images/bluetambah.gif"
                CausesValidation="true" OnClick="ubtn_Add_Click" ToolTip="Penambahan data" />
              <asp:ImageButton ID="ubtn_Export" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                CausesValidation="true" Visible="false" OnClick="ubtn_Export_Click" ToolTip="Penyimpanan data ke file text" />
              <asp:ImageButton ID="ubtn_Print" runat="server" ImageUrl="~/Images/bluecetak.gif"
                CausesValidation="false" Visible="true" OnClick="ubtn_Print_Click" ToolTip="Cetak data" />
              <asp:HiddenField ID="utxt_Param" runat="server" />
              &nbsp;
            </td>
            <td align="right" colspan="1" style="height: 20px">
              <asp:ImageButton ID="ubtn_Delete" runat="server" ImageUrl="~/Images/bluehapus.gif"
                OnClick="ubtn_Delete_Click" CausesValidation="false" />
            </td>
          </tr>
        </table>
      </asp:Panel>
    </ContentTemplate>
    <Triggers>
      <mwa:ControlEventTrigger ControlID="ubtn_Save" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_Find" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_Koneksi" EventName="Click" />
    </Triggers>
  </mwa:UpdatePanel>
  <asp:Panel ID="upnl_help" runat="server" CssClass="modalPopup2" Style="display: none">
    <table id="utbl_help" class="tblmaster500">
      <tr>
        <td align="center" style="width: 95%">
          <iframe runat="server" id="ifrm" name="ifrm" scrolling="no" width="630" height="450"
            src="HelpEditor.aspx?mode=1" frameborder="1">[Content for browsers that don't support
            iframes goes here.] </iframe>
        </td>
        <td align="left" style="width: 5%; vertical-align: top;">
          <img id="ubtn_keluar" runat="server" src="~/Images/btn_del.gif" onclick="$object('MPPHelp')._hide(); return false;" />
        </td>
      </tr>
    </table>
  </asp:Panel>
  <asp:Panel ID="upnl_Print" runat="server" CssClass="modalPopup2" Style="display: none">
    <table id="Table13" class="tblmaster500">
      <tr>
        <td align="center" style="width: 95%">
          <iframe runat="server" id="ifrm2" name="ifrm2" scrolling="no" width="630" height="450"
            frameborder="1">[Content for browsers that don't support iframes goes here.] </iframe>
        </td>
        <td align="left" style="width: 5%; vertical-align: top;">
          <img id="ubtn_keluar1" runat="server" src="~/Images/btn_del.gif" onclick="$object('MPPPrint')._hide(); return false;" />
        </td>
      </tr>
    </table>
  </asp:Panel>
  <asp:Panel ID="upnl_form_detil" runat="server" CssClass="modalPopup" Style="display: none">
    <mwa:UpdatePanel ID="UpdatePanel1" runat="server" Mode="Always" EnableViewState="true"
      RenderMode="Block">
      <ContentTemplate>
        <table id="utbl_form" class="tblhat">
          <tr>
            <td align="center">
              <asp:Panel ID="PnlFindLookup" runat="server" Visible="false">
                <table id="utbl_cari1" class="tblmaster" style="width: 95%">
                  <tr>
                    <td class="tdlabelfind">
                      Pencarian
                    </td>
                    <td colspan="2" align="left">
                      <asp:TextBox ID="utxt_value_lookup" runat="server" CssClass="txtmaster"></asp:TextBox>
                      <asp:DropDownList ID="uddl_field_lookup" runat="server" CssClass="ddlmaster" Height="20px">
                        <asp:ListItem Value="1">Kode</asp:ListItem>
                        <asp:ListItem Value="2">Uraian</asp:ListItem>
                      </asp:DropDownList>
                      <asp:ImageButton ID="ubtn_find_lookup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/bluecari.gif"
                        OnClick="ubtn_find_lookup_Click" />
                    </td>
                  </tr>
                </table>
              </asp:Panel>
            </td>
          </tr>
          <tr>
            <td align="center">
              <table id="utbl_form1" cellspacing="0" cellpadding="0" style="width: 95%" border="0"
                class="tblhat">
                <tr>
                  <td class="tdhatdetilleft" style="width: 10px; height: 20">
                  </td>
                  <td class="tdhatdetil" align="center">
                    <asp:Label ID="ulbl_title_form" runat="server" Text="Sifat Kegiatan"></asp:Label>
                  </td>
                  <td class="tdhatdetilright" style="width: 10px; height: 20">
                  </td>
                </tr>
              </table>
              <table id="Table1" class="tbllogin" style="width: 100%">
                <tr>
                  <td>
                    <asp:Panel ID="upnl_Entry" runat="server" Width="95%" Visible="false">
                      <cx:FormEntry ID="ugrv_form" runat="server" />
                    </asp:Panel>
                    <asp:Panel ID="upnl_Lookup" runat="server" Width="95%" Visible="false">
                      <asp:GridView ID="ugrv_lookup" runat="server" AutoGenerateColumns="False" CellPadding="3"
                        EmptyDataText="Tidak ditemukan data pada database" CssClass="grvmaster" DataKeyNames="Field,Value"
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCreated="ugrv_form_RowCreated"
                        CaptionAlign="Top" AllowPaging="True" OnPageIndexChanging="ugrv_form_PageIndexChanging"
                        PageSize="5">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <Columns>
                          <asp:TemplateField HeaderText="Pilih">
                            <ItemStyle Width="5%" />
                            <ItemTemplate>
                              <asp:CheckBox ID="uchk_Pilih" runat="server" AutoPostBack="True" OnCheckedChanged="uchk_Pilih_CheckedChanged" />
                            </ItemTemplate>
                            <HeaderTemplate>
                              <asp:CheckBox ID="uchk_HPilih" runat="server" AutoPostBack="True" OnCheckedChanged="uchk_HPilih_CheckedChanged"
                                ToolTip="Pilih semua" />
                            </HeaderTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="Field" HeaderText="Kode">
                            <ItemStyle Width="25%" HorizontalAlign="Left" />
                          </asp:BoundField>
                          <asp:BoundField DataField="Value" HeaderText="Uraian">
                            <ItemStyle HorizontalAlign="Left" Width="70%" />
                          </asp:BoundField>
                          <asp:BoundField DataField="Value1" HeaderText="Uraian">
                            <ItemStyle HorizontalAlign="Left" Width="70%" />
                          </asp:BoundField>
                          <asp:BoundField DataField="Value2" HeaderText="Uraian">
                            <ItemStyle HorizontalAlign="Left" Width="70%" />
                          </asp:BoundField>
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Maroon" />
                        <PagerStyle BackColor="White" ForeColor="#000066" Wrap="True" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#9ea2a2" Font-Bold="True" ForeColor="White" />
                        <PagerSettings PageButtonCount="15" />
                      </asp:GridView>
                      <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </asp:Panel>
                    <asp:Panel ID="upnl_Tree" runat="server" Width="100%" Visible="false">
                      <div style="text-align: left; overflow: scroll; width: 95%; height: 200px; border: solid 1px black">
                        <asp:TreeView ID="utree_lookup" runat="server" ShowCheckBoxes="Leaf" ShowExpandCollapse="true"
                          EnableClientScript="true">
                        </asp:TreeView>
                      </div>
                    </asp:Panel>
                  </td>
                </tr>
                <tr>
                  <td colspan="3" align="left" style="height: 27px">
                    <asp:ImageButton ID="ubtn_Save" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                      OnClick="ubtn_Save_Click" ToolTip="Simpan data" />
                    <asp:ImageButton ID="ubtn_Cancel" runat="server" ImageUrl="~/Images/bluekembali.gif"
                      CausesValidation="false" OnClick="ubtn_Cancel_Click" ToolTip="Batal" />
                </tr>
              </table>
              <asp:Label ID="ulbl_ErrorForm" runat="server" ForeColor="Red"></asp:Label>
            </td>
          </tr>
        </table>
      </ContentTemplate>
    </mwa:UpdatePanel>
  </asp:Panel>
  <div style="display: none; visibility: hidden;">
    <asp:Button runat="server" ID="hiddenButton" />
    <asp:Button runat="server" ID="hiddenButtonHelp" />
    <asp:Button runat="server" ID="hiddenButtonPrint" />
    <asp:Button runat="server" ID="hiddenButtonUser" />
  </div>
  <act:ModalPopupExtender ID="MPE" runat="server">
    <act:ModalPopupProperties ID="MPP1" TargetControlID="hiddenButton" PopupControlID="upnl_form_detil"
      BackgroundCssClass="modalBackground" />
    <act:ModalPopupProperties ID="MPPHelp" TargetControlID="hiddenButtonHelp" PopupControlID="upnl_help"
      BackgroundCssClass="modalBackground" />
    <act:ModalPopupProperties ID="MPPPrint" TargetControlID="hiddenButtonPrint" PopupControlID="upnl_print"
      BackgroundCssClass="modalBackground" />
    <act:ModalPopupProperties ID="MPPUser" TargetControlID="hiddenButtonUser" PopupControlID="upnl_user"
      BackgroundCssClass="modalBackground" />
  </act:ModalPopupExtender>
  <mwa:UpdatePanel ID="upnl_list_detil2" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <asp:Panel ID="upnl_treefilter2" runat="server" Width="100%" Visible="false">
        <table id="utbl_treefilter2" class="tblhat75">
          <tr>
            <td>
              <div style="text-align: left; overflow: scroll; width: 100%; height: 200px; border: solid 1px black">
                <asp:TreeView ID="utree_filter2" runat="server" 
                  OnSelectedNodeChanged="utree_filter_SelectedNodeChanged" ForeColor="#333333">
                </asp:TreeView>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <asp:Label ID="ulbl_treefilter2" runat="server" Width="100%" Text=""></asp:Label>
            </td>
          </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="upnl_find2" runat="server" Width="100%" Visible="false">
        <table id="utbl_find2" class="tblhat75">
          <tr>
            <td class="tdlabelfind">
              Pencarian
            </td>
            <td colspan="2" align="left">
              <asp:TextBox ID="utxt_value2" runat="server" CssClass="txtmaster"></asp:TextBox>
              <asp:DropDownList ID="uddl_field2" runat="server" CssClass="ddlmaster" Height="20px">
                <asp:ListItem Value="1">Kode</asp:ListItem>
                <asp:ListItem Value="2">Uraian</asp:ListItem>
              </asp:DropDownList>
              <asp:ImageButton ID="ubtn_Find2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/bluecari.gif"
                OnClick="ubtn_Find_Click" CausesValidation="false" />
            </td>
          </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="pnl_list_detil2" runat="server">
        <table id="utbl_topi2" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
          <tr>
            <td class="tdhatleft" style="width: 10px; height: 20">
            </td>
            <td class="tdhat">
              <asp:Label ID="ulbl_title_list2" runat="server" Text="Sifat Kegiatan"></asp:Label>
            </td>
            <td class="tdhatright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_page2" class="tblmaster75">
          <tr>
            <asp:Panel ID="TabDetil1" runat="server">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Neraca2" runat="server" SkinID="1" OnClick="LinkStatusDetil"
                  Text="Neraca" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="TabDetil2" runat="server">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Pendapatan2" runat="server" SkinID="2" OnClick="LinkStatusDetil"
                  Text="Pendapatan" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="TabDetil3" runat="server" Visible="false">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Belanja2" runat="server" SkinID="3" OnClick="LinkStatusDetil"
                  Text="Belanja" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="TabDetil4" runat="server" Visible="false">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Pembiayaan2" runat="server" SkinID="4" OnClick="LinkStatusDetil"
                  Text="Pembiayaan" CausesValidation="false" />
              </td>
            </asp:Panel>
          </tr>
          <tr>
            <td colspan="4" class="tblmaster75">
              <cx:ViewList2 ID="ugrv_list2" runat="server" />
          </tr>
          <tr>
            <td colspan="4" align="center">
              <asp:Label ID="ulbl_Error2" runat="server" ForeColor="Red"></asp:Label>
            </td>
          </tr>
        </table>
        <table id="utbl_page2a" class="tblmaster75">
          <tr>
            <td align="left" colspan="3" style="height: 20px">
              <asp:ImageButton ID="ubtn_Add2" runat="server" ImageUrl="~/Images/bluetambah.gif"
                CausesValidation="true" OnClick="ubtn_Add_Click" ToolTip="Penambahan data" />
              <asp:HiddenField ID="utxt_Param2" runat="server" />
              &nbsp;
            </td>
            <td align="right" colspan="1" style="height: 20px">
              <asp:ImageButton ID="ubtn_Delete2" runat="server" ImageUrl="~/Images/bluehapus.gif"
                OnClick="ubtn_Delete_Click" CausesValidation="false" />
            </td>
          </tr>
        </table>
      </asp:Panel>
    </ContentTemplate>
    <Triggers>
      <mwa:ControlEventTrigger ControlID="ubtn_Save2" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_Find2" EventName="Click" />
    </Triggers>
  </mwa:UpdatePanel>
  <table id="utbl_Cetak2" class="tblmaster75">
    <tr>
      <td colspan="4" align="left">
        <asp:ImageButton ID="ubtn_Print2" runat="server" ImageUrl="~/Images/bluecetak.gif"
          CausesValidation="false" Visible="false" OnClick="ubtn_Print_Click" ToolTip="Cetak data" />
      </td>
    </tr>
  </table>
  <asp:Panel ID="upnl_form_detil2" runat="server" CssClass="modalPopup " Style="display: none">
    <mwa:UpdatePanel ID="UpdatePanel2" runat="server" Mode="Always" EnableViewState="true"
      RenderMode="Block">
      <ContentTemplate>
        <table id="utbl_form2" class="tblhat">
          <tr style="height: 10px;">
            <td align="center">
              <%--              <asp:Panel ID="upnl_lookup_filter2" runat="server" Width="100%" Visible="false">
                <table id="utbl_lookup_filter2" cellspacing="0" cellpadding="0" width="98%" border="0"
                  class="tblhat">
                  <tr>
                    <td class="tdhatleft" style="width: 10px; height: 20">
                    </td>
                    <td class="tdhat">
                      <asp:Label ID="ulbl_lookup_filter2" runat="server" Text="Parameter"></asp:Label>
                    </td>
                    <td class="tdhatright" style="width: 10px; height: 20">
                    </td>
                  </tr>
                </table>
                <table id="utbl_lookup_filtera2" cellpadding="3" cellspacing="0" border="0" class="tblmaster">
                  <tr>
                    <td>
                      <cx:FormEntry ID="ugrv_lookup_filter2" runat="server" />
                    </td>
                  </tr>
                </table>
              </asp:Panel>
--%>
              <asp:Panel ID="PnlFindLookup2" runat="server" Width="100%" Visible="false">
                <table id="Table3" class="tbllogin" style="width: 100%">
                  <tr>
                    <td class="tdlabelfind">
                      Pencarian
                    </td>
                    <td colspan="2" align="left">
                      <asp:TextBox ID="utxt_value_lookup2" runat="server" CssClass="txtmaster"></asp:TextBox>
                      <asp:DropDownList ID="uddl_field_lookup2" runat="server" CssClass="ddlmaster" Height="20px">
                        <asp:ListItem Value="1">Kode</asp:ListItem>
                        <asp:ListItem Value="2">Uraian</asp:ListItem>
                      </asp:DropDownList>
                      <asp:ImageButton ID="ubtn_find_lookup2" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/bluecari.gif"
                        OnClick="ubtn_find_lookup_Click" />
                    </td>
                  </tr>
                </table>
              </asp:Panel>
            </td>
          </tr>
          <tr>
            <td align="center">
              <table id="Table4" cellspacing="0" cellpadding="0" style="width: 100%" border="0"
                class="tblhat">
                <tr>
                  <td class="tdhatdetilleft" style="width: 10px; height: 20">
                  </td>
                  <td class="tdhatdetil" align="center">
                    <asp:Label ID="ulbl_title_form2" runat="server" Text="Sifat Kegiatan"></asp:Label>
                  </td>
                  <td class="tdhatdetilright" style="width: 10px; height: 20">
                  </td>
                </tr>
              </table>
              <table id="Table5" class="tbllogin" style="width: 100%">
                <tr>
                  <td>
                    <asp:Panel ID="upnl_Entry2" runat="server" Width="100%" Visible="false">
                      <cx:FormEntry ID="ugrv_form2" runat="server" />
                    </asp:Panel>
                    <asp:Panel ID="upnl_Lookup2" runat="server" Width="100%" Visible="false">
                      <table id="Table2" class="tblhat">
                        <tr>
                          <td>
                            <asp:GridView ID="ugrv_lookup2" runat="server" AutoGenerateColumns="False" CellPadding="3"
                              EmptyDataText="Tidak ditemukan data pada database" CssClass="grvmaster" DataKeyNames="Field,Value"
                              BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCreated="ugrv_form_RowCreated"
                              CaptionAlign="Top" AllowPaging="True" OnPageIndexChanging="ugrv_form_PageIndexChanging"
                              PageSize="5">
                              <FooterStyle BackColor="White" ForeColor="#000066" />
                              <Columns>
                                <asp:TemplateField HeaderText="Pilih">
                                  <ItemStyle Width="5%" />
                                  <ItemTemplate>
                                    <asp:CheckBox ID="uchk_Pilih" runat="server" AutoPostBack="True" OnCheckedChanged="uchk_Pilih_CheckedChanged" />
                                  </ItemTemplate>
                                  <HeaderTemplate>
                                    <asp:CheckBox ID="uchk_HPilih" runat="server" AutoPostBack="True" OnCheckedChanged="uchk_HPilih_CheckedChanged"
                                      ToolTip="Pilih semua" />
                                  </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Field" HeaderText="Kode">
                                  <ItemStyle Width="25%" HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Value" HeaderText="Uraian">
                                  <ItemStyle HorizontalAlign="Left" Width="70%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Value1" HeaderText="Uraian">
                                  <ItemStyle HorizontalAlign="Left" Width="70%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Value2" HeaderText="Uraian">
                                  <ItemStyle HorizontalAlign="Left" Width="70%" />
                                </asp:BoundField>
                              </Columns>
                              <RowStyle ForeColor="#000066" />
                              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Maroon" />
                              <PagerStyle BackColor="White" ForeColor="#000066" Wrap="True" HorizontalAlign="Left" />
                              <HeaderStyle BackColor="#9ea2a2" Font-Bold="True" ForeColor="White" />
                              <PagerSettings PageButtonCount="15" />
                            </asp:GridView>
                            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                          </td>
                        </tr>
                      </table>
                    </asp:Panel>
                    <asp:Panel ID="upnl_Tree2" runat="server" Width="100%" Visible="false">
                      <div style="text-align: left; overflow: scroll; width: 95%; height: 200px; border: solid 1px black">
                        <asp:TreeView ID="utree_lookup2" runat="server" ShowCheckBoxes="Leaf" ShowExpandCollapse="true"
                          EnableClientScript="true">
                        </asp:TreeView>
                      </div>
                    </asp:Panel>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" align="left" style="height: 27px">
                    <asp:ImageButton ID="ubtn_Save2" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                      CausesValidation="true" OnClick="ubtn_Save_Click" ToolTip="Simpan data" />
                    <asp:ImageButton ID="ubtn_Cancel2" runat="server" ImageUrl="~/Images/bluekembali.gif"
                      CausesValidation="false" OnClick="ubtn_Cancel_Click" ToolTip="Batal" />
                </tr>
              </table>
              <asp:Label ID="ulbl_ErrorForm2" runat="server" ForeColor="Red"></asp:Label>
            </td>
          </tr>
        </table>
      </ContentTemplate>
    </mwa:UpdatePanel>
  </asp:Panel>
  <div style="display: none; visibility: hidden;">
    <asp:Button runat="server" ID="Button1" />
  </div>
  <act:ModalPopupExtender ID="MPE2" runat="server">
    <act:ModalPopupProperties ID="MPP2" TargetControlID="hiddenButton" PopupControlID="upnl_form_detil2"
      BackgroundCssClass="modalBackground" />
  </act:ModalPopupExtender>
  <mwa:UpdatePanel ID="upnl_list_detil3" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <asp:Panel ID="upnl_treefilter3" runat="server" Width="100%" Visible="false">
        <table id="utbl_treefilter3" class="tblhat75">
          <tr>
            <td>
              <div style="text-align: left; overflow: scroll; width: 100%; height: 200px; border: solid 1px black">
                <asp:TreeView ID="utree_filter3" runat="server" 
                  OnSelectedNodeChanged="utree_filter_SelectedNodeChanged" ForeColor="#333333">
                </asp:TreeView>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <asp:Label ID="ulbl_treefilter3" runat="server" Width="100%" Text=""></asp:Label>
            </td>
          </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="upnl_find3" runat="server" Width="100%" Visible="false">
        <table id="utbl_find3" class="tblhat75">
          <tr>
            <td class="tdlabelfind">
              Pencarian
            </td>
            <td colspan="2" align="left">
              <asp:TextBox ID="utxt_value3" runat="server" CssClass="txtmaster"></asp:TextBox>
              <asp:DropDownList ID="uddl_field3" runat="server" CssClass="ddlmaster" Height="20px">
                <asp:ListItem Value="1">Kode</asp:ListItem>
                <asp:ListItem Value="2">Uraian</asp:ListItem>
              </asp:DropDownList>
              <asp:ImageButton ID="ubtn_Find3" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/bluecari.gif"
                OnClick="ubtn_Find_Click" CausesValidation="false" />
            </td>
          </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="pnl_list_detil3" runat="server" Visible="false">
        <table id="utbl_topi3" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
          <tr>
            <td class="tdhatleft" style="width: 10px; height: 20">
            </td>
            <td class="tdhat">
              <asp:Label ID="ulbl_title_list3" runat="server" Text="Sifat Kegiatan"></asp:Label>
            </td>
            <td class="tdhatright" style="width: 10px; height: 20">
            </td>
          </tr>
        </table>
        <table id="utbl_page3" class="tblmaster75">
          <tr>
            <asp:Panel ID="TabDetilDetil1" runat="server">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Neraca3" runat="server" SkinID="1" OnClick="LinkStatusDetilDetil"
                  Text="Neraca" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="TabDetilDetil2" runat="server">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Pendapatan3" runat="server" SkinID="2" OnClick="LinkStatusDetilDetil"
                  Text="Pendapatan" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="TabDetilDetil3" runat="server" Visible="false">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Belanja3" runat="server" SkinID="3" OnClick="LinkStatusDetilDetil"
                  Text="Belanja" CausesValidation="false" />
              </td>
            </asp:Panel>
            <asp:Panel ID="TabDetilDetil4" runat="server" Visible="false">
              <td class="tdpagebar" style="width: 25%">
                <asp:LinkButton ID="ubtn_Pembiayaan3" runat="server" SkinID="4" OnClick="LinkStatusDetilDetil"
                  Text="Pembiayaan" CausesValidation="false" />
              </td>
            </asp:Panel>
          </tr>
          <tr>
            <td colspan="4" class="tblmaster75">
              <cx:ViewList ID="ugrv_list3" runat="server" />
          </tr>
          <tr>
            <td colspan="4" align="center">
              <asp:Label ID="ulbl_Error3" runat="server" ForeColor="Red"></asp:Label>
            </td>
          </tr>
        </table>
        <table id="utbl_page3a" class="tblmaster75">
          <tr>
            <td align="left" colspan="3" style="height: 20px">
              <asp:ImageButton ID="ubtn_Add3" runat="server" ImageUrl="~/Images/bluetambah.gif"
                CausesValidation="true" OnClick="ubtn_Add_Click" ToolTip="Penambahan data" />
              <asp:HiddenField ID="utxt_Param3" runat="server" />
              &nbsp;
            </td>
            <td align="right" colspan="1" style="height: 20px">
              <asp:ImageButton ID="ubtn_Delete3" runat="server" ImageUrl="~/Images/bluehapus.gif"
                OnClick="ubtn_Delete_Click" CausesValidation="false" />
            </td>
          </tr>
        </table>
      </asp:Panel>
    </ContentTemplate>
    <Triggers>
      <mwa:ControlEventTrigger ControlID="ubtn_Save3" EventName="Click" />
      <mwa:ControlEventTrigger ControlID="ubtn_find3" EventName="Click" />
    </Triggers>
  </mwa:UpdatePanel>
  <table id="utbl_Cetak3" class="tblmaster75">
    <tr>
      <td colspan="4" align="left">
        <asp:ImageButton ID="ubtn_Print3" runat="server" ImageUrl="~/Images/bluecetak.gif"
          CausesValidation="false" Visible="false" OnClick="ubtn_Print_Click" ToolTip="Cetak data" />
      </td>
    </tr>
  </table>
  <asp:Panel ID="upnl_form_detil3" runat="server" CssClass="modalPopup " Style="display: none">
    <mwa:UpdatePanel ID="UpdatePanel3" runat="server" Mode="Always" EnableViewState="true"
      RenderMode="Block">
      <ContentTemplate>
        <table id="utbl_form3" class="tblhat">
          <tr style="height: 10px;">
            <td align="center">
              <%--              <asp:Panel ID="upnl_lookup_filter3" runat="server" Width="100%" Visible="false">
                <table id="utbl_lookup_filter3" cellspacing="0" cellpadding="0" width="98%" border="0"
                  class="tblhat">
                  <tr>
                    <td class="tdhatleft" style="width: 10px; height: 20">
                    </td>
                    <td class="tdhat">
                      <asp:Label ID="ulbl_lookup_filter3" runat="server" Text="Parameter"></asp:Label>
                    </td>
                    <td class="tdhatright" style="width: 10px; height: 20">
                    </td>
                  </tr>
                </table>
                <table id="utbl_lookup_filtera3" cellpadding="3" cellspacing="0" border="0" class="tblmaster">
                  <tr>
                    <td>
                      <cx:FormEntry ID="ugrv_lookup_filter3" runat="server" />
                    </td>
                  </tr>
                </table>
              </asp:Panel>
--%>
              <asp:Panel ID="PnlFindLookup3" runat="server" Width="100%" Visible="false">
                <table id="Table7" class="tbllogin" style="width: 100%">
                  <tr>
                    <td class="tdlabelfind">
                      Pencarian
                    </td>
                    <td colspan="2" align="left">
                      <asp:TextBox ID="utxt_value_lookup3" runat="server" CssClass="txtmaster"></asp:TextBox>
                      <asp:DropDownList ID="uddl_field_lookup3" runat="server" CssClass="ddlmaster" Height="20px">
                        <asp:ListItem Value="1">Kode</asp:ListItem>
                        <asp:ListItem Value="2">Uraian</asp:ListItem>
                      </asp:DropDownList>
                      <asp:ImageButton ID="ubtn_find_lookup3" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/bluecari.gif"
                        OnClick="ubtn_find_lookup_Click" />
                    </td>
                  </tr>
                </table>
              </asp:Panel>
            </td>
          </tr>
          <tr>
            <td align="center">
              <table id="Table8" cellspacing="0" cellpadding="0" style="width: 100%" border="0"
                class="tblhat">
                <tr>
                  <td class="tdhatdetilleft" style="width: 10px; height: 20">
                  </td>
                  <td class="tdhatdetil" align="center">
                    <asp:Label ID="ulbl_title_form3" runat="server" Text="Sifat Kegiatan"></asp:Label>
                  </td>
                  <td class="tdhatdetilright" style="width: 10px; height: 20">
                  </td>
                </tr>
              </table>
              <table id="Table9" class="tbllogin" style="width: 100%">
                <tr>
                  <td>
                    <asp:Panel ID="upnl_Entry3" runat="server" Width="100%" Visible="false">
                      <cx:FormEntry ID="ugrv_form3" runat="server" />
                    </asp:Panel>
                    <asp:Panel ID="upnl_Lookup3" runat="server" Width="100%" Visible="false">
                      <table id="Table10" class="tblhat">
                        <tr>
                          <td>
                            <asp:GridView ID="ugrv_lookup3" runat="server" AutoGenerateColumns="False" CellPadding="3"
                              EmptyDataText="Tidak ditemukan data pada database" CssClass="grvmaster" DataKeyNames="Field,Value"
                              BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCreated="ugrv_form_RowCreated"
                              CaptionAlign="Top" AllowPaging="True" OnPageIndexChanging="ugrv_form_PageIndexChanging"
                              PageSize="5">
                              <FooterStyle BackColor="White" ForeColor="#000066" />
                              <Columns>
                                <asp:TemplateField HeaderText="Pilih">
                                  <ItemStyle Width="5%" />
                                  <ItemTemplate>
                                    <asp:CheckBox ID="uchk_Pilih" runat="server" AutoPostBack="True" OnCheckedChanged="uchk_Pilih_CheckedChanged" />
                                  </ItemTemplate>
                                  <HeaderTemplate>
                                    <asp:CheckBox ID="uchk_HPilih" runat="server" AutoPostBack="True" OnCheckedChanged="uchk_HPilih_CheckedChanged"
                                      ToolTip="Pilih semua" />
                                  </HeaderTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Field" HeaderText="Kode">
                                  <ItemStyle Width="25%" HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Value" HeaderText="Uraian">
                                  <ItemStyle HorizontalAlign="Left" Width="70%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Value1" HeaderText="Uraian">
                                  <ItemStyle HorizontalAlign="Left" Width="70%" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Value2" HeaderText="Uraian">
                                  <ItemStyle HorizontalAlign="Left" Width="70%" />
                                </asp:BoundField>
                              </Columns>
                              <RowStyle ForeColor="#000066" />
                              <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Maroon" />
                              <PagerStyle BackColor="White" ForeColor="#000066" Wrap="True" HorizontalAlign="Left" />
                              <HeaderStyle BackColor="#9ea2a2" Font-Bold="True" ForeColor="White" />
                              <PagerSettings PageButtonCount="15" />
                            </asp:GridView>
                            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                          </td>
                        </tr>
                      </table>
                    </asp:Panel>
                    <asp:Panel ID="upnl_Tree3" runat="server" Width="100%" Visible="false">
                      <div style="text-align: left; overflow: scroll; width: 95%; height: 200px; border: solid 1px black">
                        <asp:TreeView ID="utree_lookup3" runat="server" ShowCheckBoxes="Leaf" ShowExpandCollapse="true"
                          EnableClientScript="true">
                        </asp:TreeView>
                      </div>
                    </asp:Panel>
                  </td>
                </tr>
                <tr>
                  <td colspan="4" align="left" style="height: 27px">
                    <asp:ImageButton ID="ubtn_Save3" runat="server" ImageUrl="~/Images/bluesimpan.gif"
                      CausesValidation="true" OnClick="ubtn_Save_Click" ToolTip="Simpan data" />
                    <asp:ImageButton ID="ubtn_Cancel3" runat="server" ImageUrl="~/Images/bluekembali.gif"
                      CausesValidation="false" OnClick="ubtn_Cancel_Click" ToolTip="Batal" />
                </tr>
              </table>
              <asp:Label ID="ulbl_ErrorForm3" runat="server" ForeColor="Red"></asp:Label>
            </td>
          </tr>
        </table>
      </ContentTemplate>
    </mwa:UpdatePanel>
  </asp:Panel>
  <asp:Panel ID="upnl_user" runat="server" CssClass="modalPopup " Style="display: none">
    <table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
      font-family: 'Trebuchet MS', Verdana, Arial; width: 100%; border-top-style: none;">
      <tr>
        <td style="height: 300px;" align="center">
          <table id="Table12" cellspacing="0" cellpadding="0" style="width: 60%" border="0"
            class="tblhat">
            <tr>
              <td class="tdhatleft" style="width: 10px" width="10" height="20">
              </td>
              <td class="tdhat">
                <asp:Label ID="ulbl_Logon" runat="server" Text="LOG ON"></asp:Label>
              </td>
              <td class="tdhatright" style="width: 10px; height: 20">
              </td>
            </tr>
          </table>
          <table id="utbl_Login" class="tbllogin" style="width: 60%">
            <tr>
              <td class="tdlabellist" style="height: 23px">
                <asp:Label ID="ulbl_Userid" runat="server" Text="User Id"></asp:Label>
              </td>
              <td class="tdinput" colspan="3" style="height: 23px">
                <asp:TextBox ID="utxt_Userid" runat="server" CssClass="txtmaster" Width="70%" Text="superuser"></asp:TextBox>
                <asp:RequiredFieldValidator ID="urfv_Userid" runat="server" ControlToValidate="utxt_Userid"
                  Enabled="false" ErrorMessage="*)" Width="1px"></asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
              <td class="tdlabellist">
                <asp:Label ID="ulbl_Pwd" runat="server" Text="Password"></asp:Label>
              </td>
              <td colspan="3" class="tdinput">
                <asp:TextBox ID="utxt_Pwd" runat="server" CssClass="txtmaster" TextMode="Password"
                  Width="70%"></asp:TextBox>
              </td>
            </tr>
          </table>
          <table id="utbl_Button" class="tbllogin" style="width: 60%">
            <tr>
              <td align="center" colspan="4">
                <asp:ImageButton ID="ubtn_koneksi" runat="server" ImageUrl="~/Images/bluelogin.gif"
                  OnClick="ubtn_koneksi_Click" />
                <img id="Img1" runat="server" src="~/Images/bluelogout.gif" onclick="$object('MPPUser')._hide(); return false;" />
              </td>
            </tr>
          </table>
          <asp:Label ID="ulbl_error_login" runat="server" ForeColor="Red" Text=""></asp:Label>
        </td>
      </tr>
    </table>
  </asp:Panel>
  <div style="display: none; visibility: hidden;">
    <asp:Button runat="server" ID="Button3" />
  </div>
  <act:ModalPopupExtender ID="MPE3" runat="server">
    <act:ModalPopupProperties ID="MPP3" TargetControlID="hiddenButton" PopupControlID="upnl_form_detil3"
      BackgroundCssClass="modalBackground" />
  </act:ModalPopupExtender>

  <script type="text/javascript">
    function onUpdating() 
    {
        // get the divImage
        var panelProg = $get('divImage');
        // set it to visible
        panelProg.style.display = 'none';
    }

    function onUpdated() 
    {
        // get the divImage
        var panelProg = $get('divImage');
        // set it to invisible
        panelProg.style.display = 'none';
    }
  </script>

  <act:UpdatePanelAnimationExtender ID="upae" runat="server">
    <act:UpdatePanelAnimationProperties TargetControlID="upnl_filter">
      <Animations>
                    <OnUpdating>
                        <Sequence>
                            <EnableAction AnimationTarget="effect_options" Enabled="false" />
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdating();" />                                                           
                            </Parallel>
                        </Sequence>
                    </OnUpdating>
                    <OnUpdated>
                        <Sequence>
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdated();" />
                            </Parallel>
                            <EnableAction AnimationTarget="effect_options" Enabled="true" />
                        </Sequence>
                    </OnUpdated>
      </Animations>
    </act:UpdatePanelAnimationProperties>
    <act:UpdatePanelAnimationProperties TargetControlID="upnl_find">
      <Animations>
                    <OnUpdating>
                        <Sequence>
                            <EnableAction AnimationTarget="effect_options" Enabled="false" />
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdating();" />                                                           
                            </Parallel>
                        </Sequence>
                    </OnUpdating>
                    <OnUpdated>
                        <Sequence>
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdated();" />
                            </Parallel>
                            <EnableAction AnimationTarget="effect_options" Enabled="true" />
                        </Sequence>
                    </OnUpdated>
      </Animations>
    </act:UpdatePanelAnimationProperties>
    <act:UpdatePanelAnimationProperties TargetControlID="upnl_list_detil">
      <Animations>
                    <OnUpdating>
                        <Sequence>
                            <EnableAction AnimationTarget="effect_options" Enabled="false" />
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdating();" />                                                           
                            </Parallel>
                        </Sequence>
                    </OnUpdating>
                    <OnUpdated>
                        <Sequence>
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdated();" />
                            </Parallel>
                            <EnableAction AnimationTarget="effect_options" Enabled="true" />
                        </Sequence>
                    </OnUpdated>
      </Animations>
    </act:UpdatePanelAnimationProperties>
    <act:UpdatePanelAnimationProperties TargetControlID="upnl_list_detil2">
      <Animations>
                    <OnUpdating>
                        <Sequence>
                            <EnableAction AnimationTarget="effect_options" Enabled="false" />
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdating();" />                                                           
                            </Parallel>
                        </Sequence>
                    </OnUpdating>
                    <OnUpdated>
                        <Sequence>
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdated();" />
                            </Parallel>
                            <EnableAction AnimationTarget="effect_options" Enabled="true" />
                        </Sequence>
                    </OnUpdated>
      </Animations>
    </act:UpdatePanelAnimationProperties>
    <act:UpdatePanelAnimationProperties TargetControlID="upnl_list_detil3">
      <Animations>
                    <OnUpdating>
                        <Sequence>
                            <EnableAction AnimationTarget="effect_options" Enabled="false" />
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdating();" />                                                           
                            </Parallel>
                        </Sequence>
                    </OnUpdating>
                    <OnUpdated>
                        <Sequence>
                            <Parallel duration="0">
                                <ScriptAction Script="onUpdated();" />
                            </Parallel>
                            <EnableAction AnimationTarget="effect_options" Enabled="true" />
                        </Sequence>
                    </OnUpdated>
      </Animations>
    </act:UpdatePanelAnimationProperties>
  </act:UpdatePanelAnimationExtender>
</center>
</asp:Content>
