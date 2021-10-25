<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pPageExim, App_Web_oselwu5t" %>

<%@ Register Assembly="eWorld.UI, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
  Namespace="eWorld.UI" TagPrefix="ew" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register TagPrefix="cx" TagName="FormEntry" Src="../Ascx/FormEntry.ascx" %>
<%@ Register TagPrefix="cx" TagName="ViewList" Src="../Ascx/ViewList.ascx" %>

<asp:Content ID="ucon_list" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
<mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true" RenderMode="Block" >
<ContentTemplate>
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
</asp:Panel>
</ContentTemplate>
<Triggers>
  <mwa:ControlEventTrigger Controlid="ubtn_exec" EventName="Click" />
</Triggers>
</mwa:UpdatePanel>
<table id="utbl_Cetak" class="tblmaster75">
  <tr>
    <td colspan="4" align="center">
      <asp:Label ID="ulbl_Error" runat="server" ForeColor="Red"></asp:Label>
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
</table>
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

<br />

</asp:Content>

