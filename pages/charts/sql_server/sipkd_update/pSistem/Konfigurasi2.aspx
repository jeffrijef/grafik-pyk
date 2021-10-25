<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Konfigurasi2, App_Web_thj50hhy" title="Transfer RKA/APBD" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
        font-family: 'Trebuchet MS', Verdana, Arial; width: 100%;">
        <tr>
          <td style="height: 300px;" align="center">
            <table id="utbl_topi" cellspacing="0" cellpadding="0" style="width: 50%" border="0"
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
            <table id="utbl_Status" class="tbllogin" style="width: 50%">
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
              <tr class="trhide">
                <td class="tdlabellist">
                </td>
                <td class="tdinput" colspan="3">
                  <asp:TextBox ID="utxt_Unitkey" runat="server" CssClass="txtmaster"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td class="tdlabellist">
                  <asp:Label ID="Label1" runat="server" Text="Unit Organisasi"></asp:Label>
                </td>
                <td colspan="3" class="tdinput">
                  <asp:TextBox ID="utxt_Kdunit" runat="server" CssClass="txtmaster" ReadOnly="True"
                    Width="15%"></asp:TextBox>
                  <asp:Image ID="ubtn_Lookup_unit" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/IconAdvSearch_old.gif" />
                  <asp:TextBox ID="utxt_Nmunit" runat="server" CssClass="txtmaster" ReadOnly="True"
                    Width="70%"></asp:TextBox>
                </td>
              </tr>
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
                    <asp:Label ID="ulbl_TahapFrom" runat="server" Text="Tahapan Sumber"></asp:Label>
                  </td>
                  <td class="tdinput" colspan="3">
                    <asp:DropDownList ID="uddl_TahapFrom" runat="server" CssClass="ddlmaster" OnSelectedIndexChanged="uddl_Tahap_SelectedIndexChanged"
                      AutoPostBack="True">
                    </asp:DropDownList>
                  </td>
                </tr>
                <tr>
                  <td class="tdlabellist">
                    <asp:Label ID="ulbl_Tahap" runat="server" Text="Tahapan Tujuan"></asp:Label>
                  </td>
                  <td class="tdinput" colspan="3">
                    <asp:DropDownList ID="uddl_Tahap" runat="server" CssClass="ddlmaster" OnSelectedIndexChanged="uddl_Tahap_SelectedIndexChanged"
                      AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:CheckBox ID="uchk_Transfer" runat="server" CssClass="btnmaster" Text="Transfer Tahapan" />
                    <asp:CheckBox ID="uchk_Delete" runat="server" CssClass="btnmaster" Text="Delete Insert" />
                  </td>
                </tr>
              </asp:Panel>
              <tr>
                <td align="right" colspan="4">
                  <asp:ImageButton ID="ubtn_ok" runat="server" ImageUrl="~/Images/blueok.gif" OnClick="ubtn_ok_Click" />
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </ContentTemplate>
  </mwa:UpdatePanel>
  <mwa:UpdatePanel ID="UpdatePanel1" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <table id="Table1" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
        font-family: 'Trebuchet MS', Verdana, Arial; width: 50%;">
              <tr>
                <td colspan="4" align="center">
                  <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red" Text=""></asp:Label>
                </td>
              </tr>
              <tr>
                <td align="right" colspan="4">
                  <asp:ListBox ID="ulist_status" runat="server" Width="100%" Rows="10"/>
                </td>
              </tr>
      </table>
    </ContentTemplate>
    <Triggers>
      <mwa:ControlEventTrigger ControlID="ubtn_ok" EventName="Click" />
    </Triggers>
  </mwa:UpdatePanel>
      <act:UpdatePanelAnimationExtender ID="upae" runat="server">
            <act:UpdatePanelAnimationProperties TargetControlID="upnl_filter">
                <Animations>
                    <OnUpdating>
                        <Sequence>
                            
                            <EnableAction AnimationTarget="effect_options" Enabled="false" />
                            
                            <StyleAction Attribute="overflow" Value="hidden" />
                            <Parallel duration=".25" Fps="30">
                                <Condition ConditionScript="$('effect_fade').checked">
                                    <FadeOut AnimationTarget="up_container" minimumOpacity=".2" />
                                </Condition>
                                <Condition ConditionScript="$('effect_collapse').checked">
                                    <Resize Height="0" />
                                </Condition>
                                <Condition ConditionScript="$('effect_color').checked">
                                    <Color AnimationTarget="up_container" EndValue="#FF0000" StartValue="#40669A" Property="style" PropertyKey="backgroundColor"/>
                                </Condition>
                            </Parallel>
                        </Sequence>
                    </OnUpdating>
                    <OnUpdated>
                        <Sequence>
                            <Parallel duration=".25" Fps="30">
                                <Condition ConditionScript="$('effect_fade').checked">
                                    <FadeIn AnimationTarget="up_container" minimumOpacity=".2" />
                                </Condition>
                                <Condition ConditionScript="$('effect_collapse').checked">
                                    <Resize Height="70" />
                                </Condition>
                                <Condition ConditionScript="$('effect_color').checked">
                                    <Color AnimationTarget="up_container" StartValue="#FF0000" EndValue="#40669A" Property="style" PropertyKey="backgroundColor"/>
                                </Condition>
                            </Parallel>
                            <EnableAction AnimationTarget="effect_options" Enabled="true" />
                            
                        </Sequence>
                    </OnUpdated>
                </Animations>
            </act:UpdatePanelAnimationProperties>
        </act:UpdatePanelAnimationExtender></asp:Content>
