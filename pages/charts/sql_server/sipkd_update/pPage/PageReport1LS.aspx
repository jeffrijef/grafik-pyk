<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pPageReport1x, App_Web_oselwu5t" %>

<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
  Namespace="eWorld.UI" TagPrefix="ew" %>
<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register TagPrefix="cx" TagName="FormEntry" Src="../Ascx/FormEntry.ascx" %>
<%@ Register TagPrefix="cx" TagName="ViewList" Src="../Ascx/ViewList.ascx" %>
<%--<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
--%>
<asp:Content ID="ucon_list" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
      <asp:Panel ID="upnl_form_filter" runat="server" Width="100%" Visible="false">
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
        <table id="Table1" class="tblmaster75">
          <tr>
            <td colspan="4" align="Center">
              <asp:LinkButton ID="ulink_file" runat="server" ForeColor="Blue" Text="Link" OnClick="ulink_file_Click"
                Visible="false"></asp:LinkButton>
            </td>
          </tr>
          <tr>
            <td colspan="4" align="center">
              <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red" Text=""></asp:Label>
            </td>
          </tr>
        </table>
      </asp:Panel>
      <asp:Panel ID="PnlCetak" runat="server" Width="100%" Visible="true">
      <table id="utbl_Cetak" class="tblmaster75">
        <tr>
          <td colspan="4" align="left">
            <asp:ImageButton ID="ubtn_Print" runat="server" ImageUrl="~/Images/bluecetak.gif"
              CausesValidation="false" OnClick="ubtn_Print_Click" ToolTip="Cetak data" />
          </td>
        </tr>
      </table>
      </asp:Panel>
      <iframe runat="server" id="ifrm" name="ifrm" scrolling="auto" width="90%" height="500"
        frameborder="1">[Content for browsers that don't support iframes goes here.] 
      </iframe>
    </ContentTemplate>
    <Triggers>
      <%--  <mwa:ControlEventTrigger Controlid="ubtn_Print" EventName="Click" />
--%></Triggers>
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
  </act:UpdatePanelAnimationExtender>
  <mwa:UpdateProgress ID="UpdateProgress1" runat="server">
    <ProgressTemplate>
      <img src="../Images/LoadingCircle.gif" />
      <br />
      Sedang Memproses Laporan...
    </ProgressTemplate>
  </mwa:UpdateProgress>
  <br />
</asp:Content>
