<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Konfigurasi5, App_Web_thj50hhy" title="Kirim SPM" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <table id="utbl_Login" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px;
        font-family: 'Trebuchet MS', Verdana, Arial; width: 100%; height: 100px;">
      <%--  <tr>--%>
          <td style="height: 100px;" align="center">
            <table id="utbl_topi" cellspacing="0" cellpadding="0" style="width: 50%" border="0"
              class="tblhat">
              <tr>
                <td class="tdhatleft" style="width: 10px; height: 20px;" width="10">
                </td>
                <td class="tdhat" style="height: 20px">
                  <asp:Label ID="ulbl_title" runat="server" Text="Kirim Data SPM" />
                </td>
                <td class="tdhatright" style="width: 10px; height: 20px;">
                </td>
              </tr>
            </table>
            <table id="utbl_Status" class="tbllogin" style="width: 50%">
              <tr class="trhide">
                <td class="tdlabellist">
                </td>
                <td class="tdinput" colspan="3">
                  <asp:TextBox ID="utxt_Unitkey" runat="server" CssClass="txtmaster"></asp:TextBox>
                </td>
              </tr>
              <tr>
                <td class="tdlabellist">
                  <asp:Label ID="Label2" runat="server" Text="Unit Organisasi"></asp:Label>
                </td>
                <td colspan="3" class="tdinput">
                  <asp:TextBox ID="utxt_Kdunit" runat="server" CssClass="txtmaster" ReadOnly="True"
                    Width="15%"></asp:TextBox>
                  <asp:ImageButton ID="ubtn_Lookup_unit" runat="server" ImageAlign="AbsMiddle" 
                        ImageUrl="~/Images/IconAdvSearch_old.gif" OnClick="lookup_unit_Click" />
                  <asp:TextBox ID="utxt_Nmunit" runat="server" CssClass="txtmaster" ReadOnly="True"
                    Width="70%"></asp:TextBox>
                </td>
              </tr>
            
            <tr class="trhide">
              <td class="tdlabellist">
                <asp:Label ID="ulbl_oldd" runat="server" Text="Database"></asp:Label>
              </td>
              <td class="tdinput">
                <asp:TextBox ID="utxt_olddb" runat="server" CssClass="txtmaster" Width="50%"></asp:TextBox>
              </td>
        </tr>
           <tr class="trhide">
              <td class="tdlabellist">
                <asp:Label ID="ulbl_newdb" runat="server" Text="Database2"></asp:Label>
              </td>
              <td class="tdinput">
                <asp:TextBox ID="utxt_newdb" runat="server" CssClass="txtmaster" Width="50%"></asp:TextBox>

        </tr>
<tr class="trhide">
              </td>
                <td class="tdlabel">
                <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label>
              </td>
              <td class="tdinput">
                <input type="file" id="utxt_file" runat="server" style="width: 100%" />
              </td>
</tr>
<tr>
            <td class="tdlabel">
              <asp:Label ID="Label1" runat="server" Text="Tahun Database"></asp:Label>
            </td>
            <td class="tdinput">
              <asp:DropDownList ID="uddl_Thn" runat="server" Width="15%">
              </asp:DropDownList>
            </td>
          </tr>
<tr>
            <td class="tdlabel">
              <asp:Label ID="Label9" runat="server" Text="Tahun Database"></asp:Label>
            </td>
            <td class="tdinput">
              <asp:DropDownList ID="uddl_thang" runat="server" Width="20%">
              </asp:DropDownList>
            </td>
          </tr>
        <%--<tr>
          <td align="right" colspan="2">
            <asp:ImageButton ID="ubtn_ok" runat="server" ImageUrl="~/Images/blueok.gif" 
              OnClick="ubtn_ok_Click" />
          </td>
        </tr>--%>
              <%--  </tr>--%>
            </table>
          </td>
        </tr>
      </table>
    </ContentTemplate>
  </mwa:UpdatePanel>
  <mwa:UpdatePanel ID="UpdatePanel1" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <table id="Table1" border="0" cellpadding="0" cellspacing="0" width="100%" style="font-size: 12px;
        font-family: 'Trebuchet MS', Verdana, Arial; width: 50%; height: 93px;">
              <tr>
                <td colspan="4" align="center">
                  <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red" Text=""></asp:Label>
                </td>
              </tr>
              <tr>
                <td align="center" colspan="4">
                 <asp:GridView ID="GV_Kirim" runat="server" GridLines="Both"  CellPadding="2" CellSpacing="0" Width="100%" 
                      BackColor="#efedea"
                    AutoGenerateColumns="False" PageSize="10" AllowPaging="True" OnPageIndexChanging="GV_Kirim_PageIndexChanging">
                    <Columns>
                      <asp:BoundField DataField="NOSPM" ItemStyle-BackColor="White" ItemStyle-Width="40%" ItemStyle-HorizontalAlign = "Left" HeaderText="Nomor"  />
                      <asp:BoundField DataField="TGLSPM" ItemStyle-BackColor="White" ItemStyle-Width="13%" ItemStyle-HorizontalAlign = "center"
                        HeaderText="Tanggal" DataFormatString="{0:dd-MM-yyyy}"   />
                      <asp:BoundField DataField="NOSPP" ItemStyle-BackColor="White" ItemStyle-Width="40%" ItemStyle-HorizontalAlign = "Left" HeaderText="SPP" />
                      <asp:TemplateField ItemStyle-Width="7%" ItemStyle-BackColor="White" ItemStyle-HorizontalAlign = "center" HeaderText="Pilih">
                        <ItemTemplate>
                          <asp:CheckBox ID="CheckPilih" runat="server" Enabled="true" />
                        </ItemTemplate>
                      </asp:TemplateField>
                    </Columns>
                  </asp:GridView>
                </td>
              </tr>
          <tr>
            <td colspan="2" align="center" style="height: 20px">
              <center>
                <asp:Button ID="ubtn_exec" runat="server" Text="Kirim" OnClick="ubtn_exec_Click" />
                <%--<asp:Button ID="ubtn_reset" runat="server" Text="Reset" OnClick="ubtn_reset_Click" />--%>
              </center>
            </td>
          </tr>
      </table>
    </ContentTemplate>
<%--    <Triggers>
      <mwa:ControlEventTrigger ControlID="ubtn_ok" EventName="Click" />
    </Triggers>--%>
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
