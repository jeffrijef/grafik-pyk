<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Konfigurasi, App_Web_thj50hhy" title="Konfigurasi Pengguna" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
        font-family: 'Trebuchet MS', Verdana, Arial; width: 100%;">
        <tr>
          <td style="height: 300px;" align="center">
            <table id="utbl_topi" cellspacing="0" cellpadding="0" style="width: 40%" border="0"
              class="tblhat">
              <tr>
                <td class="tdhatleft" style="width: 10px; height: 20px;" width="10">
                </td>
                <td class="tdhat" style="height: 20px">
                  <asp:Label ID="ulbl_title" runat="server" Text="" />
                </td>
                <td class="tdhatright" style="width: 10px; height: 20px;">
                </td>
              </tr>
            </table>
            <table id="utbl_Status" class="tbllogin" style="width: 40%">
              <tr>
                <td class="tdlabellist">
                  <asp:Label ID="ulbl_Userid" runat="server" Text="User Id"></asp:Label>
                </td>
                <td colspan="3" class="tdinput">
                  <asp:TextBox ID="utxt_Userid" runat="server" CssClass="txtmaster" ReadOnly="True"
                    Width="15%"></asp:TextBox><asp:Image ID="ubtn_Lookup" runat="server" ImageAlign="AbsMiddle"
                      ImageUrl="~/Images/IconAdvSearch_old.gif" />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="utxt_Userid"
                    ErrorMessage="*)" Font-Bold="False"></asp:RequiredFieldValidator><asp:TextBox ID="utxt_Nama"
                      runat="server" CssClass="txtmaster" ReadOnly="True" Width="70%"></asp:TextBox>
                </td>
              </tr>
              <asp:Panel ID="upnl_pwdnew" runat="server">
                <tr>
                  <td class="tdlabellist">
                    <asp:Label ID="ulbl_Pwd" runat="server" Text="Password Baru"></asp:Label>
                  </td>
                  <td colspan="3" class="tdinput">
                    <asp:TextBox ID="utxt_NewPwd" runat="server" CssClass="txtmaster" TextMode="Password"
                      Width="98%"></asp:TextBox>
                  </td>
                </tr>
                <tr>
                  <td class="tdlabellist" style="width: 40%">
                    <asp:Label ID="ulbl_UlangPwd" runat="server" Text="Ulangi Password Baru"></asp:Label>
                  </td>
                  <td colspan="3" class="tdinput">
                    <asp:TextBox ID="utxt_UlangPwd" runat="server" CssClass="txtmaster" TextMode="Password"
                      Width="98%"></asp:TextBox>
                  </td>
                </tr>
              </asp:Panel>
              <tr class="trhide">
                <td class="tdlabellist">
                  <asp:Label ID="ulbl_database" runat="server" Text="Database"></asp:Label>
                </td>
                <td class="tdinput" colspan="3">
                  <asp:TextBox ID="utxt_database" runat="server" CssClass="txtmaster" Width="50%"></asp:TextBox>
                </td>
              </tr>
              <asp:Panel ID="upnl_tahap" runat="server">
                <tr>
                  <td class="tdlabellist">
                    <asp:Label ID="ulbl_Tahap" runat="server" Text="Tahapan"></asp:Label>
                  </td>
                  <td class="tdinput" colspan="3">
                    <asp:DropDownList ID="uddl_Tahap" runat="server" CssClass="ddlmaster" OnSelectedIndexChanged="uddl_Tahap_SelectedIndexChanged"
                      AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:CheckBox ID="uchk_Transfer" runat="server" CssClass="btnmaster" Text="Transfer Tahapan" />
                  </td>
                </tr>
              </asp:Panel>
              <tr>
                <td align="right" colspan="4">
                  <asp:ImageButton ID="ubtn_ok" runat="server" ImageUrl="~/Images/blueok.gif" OnClick="ubtn_ok_Click" />
                </td>
              </tr>
              <tr>
                <td colspan="4" align="center">
                  <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red" Text=""></asp:Label>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </ContentTemplate>
  </mwa:UpdatePanel>
</asp:Content>
