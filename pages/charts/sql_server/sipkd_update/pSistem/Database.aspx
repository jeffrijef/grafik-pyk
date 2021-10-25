<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="pSistem_Database, App_Web_thj50hhy" title="Operasi Database" %>

<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register Assembly="eWorld.UI.Compatibility, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
  Namespace="eWorld.UI.Compatibility" TagPrefix="ew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" runat="Server">
  <%--  <mwa:UpdatePanel ID="upnl_filter" runat="server" Mode="Always" EnableViewState="true"
    RenderMode="Block">
    <ContentTemplate>
  --%>
  <asp:Panel ID="Panel3" runat="server" Width="95%">
    <table id="utbl_judul_filter" cellspacing="0" cellpadding="0" width="98%" border="0"
      class="tblhat75">
      <tr>
        <td class="tdhatleft" style="width: 10px; height: 20">
        </td>
        <td class="tdhat">
          <asp:Label ID="ulbl_title_filter" runat="server" Text="Pilih Parameter"></asp:Label>
        </td>
        <td class="tdhatright" style="width: 10px; height: 20">
        </td>
      </tr>
    </table>
    <table id="utbl_List1" class="tblmaster75">
      <tr>
        <td class="tdlabel">
          <asp:Label ID="Label4" runat="server" Text="Pilih Data"></asp:Label>
        </td>
        <td align="left" style="height: 24px; width: 533px;">
          <asp:DropDownList ID="uddl_data" runat="server" Width="70%">
          </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td class="tdlabel">
          <asp:Label ID="Label7" runat="server" Text="Kode Gaji"></asp:Label>
        </td>
        <td align="left" style="height: 24px; width: 533px;">
          <asp:DropDownList ID="uddl_kdgaji" runat="server" Width="70%">
            <asp:ListItem Value="GJINDUK">GAJI INDUK</asp:ListItem>
            <asp:ListItem Value="GJKURANG">GAJI KEKURANGAN</asp:ListItem>
            <asp:ListItem Value="GJSUSULAN">GAJI SUSULAN</asp:ListItem>
            <asp:ListItem Value="TJKHUSUS">TUNJANGAN KHUSUS</asp:ListItem>
            <asp:ListItem Value="GJRAPEL">GAJI RAPEL MASAL</asp:ListItem>
            <asp:ListItem Value="GJTERUSAN">GAJI TERUSAN</asp:ListItem>
            <asp:ListItem Value="GJLEBIH">GAJI KELEBIHAN</asp:ListItem>
            <asp:ListItem Value="GJDUKA">GAJI UANG DUKA</asp:ListItem>
            <asp:ListItem Value="GJ13">GAJI KE 13</asp:ListItem>
          </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td class="tdlabel">
          <asp:Label ID="Label8" runat="server" Text="Bulan"></asp:Label>
        </td>
        <td align="left" style="height: 24px; width: 533px;">
          <asp:DropDownList ID="uddl_bulan" runat="server" Width="70%">
            <asp:ListItem Value="1">Januari</asp:ListItem>
            <asp:ListItem Value="2">Februari</asp:ListItem>
            <asp:ListItem Value="3">Maret</asp:ListItem>
            <asp:ListItem Value="4">April</asp:ListItem>
            <asp:ListItem Value="5">Mei</asp:ListItem>
            <asp:ListItem Value="6">Juni</asp:ListItem>
            <asp:ListItem Value="7">Juli</asp:ListItem>
            <asp:ListItem Value="8">Agustus</asp:ListItem>
            <asp:ListItem Value="9">September</asp:ListItem>
            <asp:ListItem Value="10">Oktober</asp:ListItem>
            <asp:ListItem Value="11">November</asp:ListItem>
            <asp:ListItem Value="12">Desember</asp:ListItem>
          </asp:DropDownList>
        </td>
      </tr>
      <asp:Panel ID="PnlFormat" runat="server" Visible="false">
        <tr>
          <td class="tdlabel">
            <asp:Label ID="Label3" runat="server" Text="Pilih Format"></asp:Label>
          </td>
          <td align="left" style="height: 24px; width: 533px;">
            <asp:DropDownList ID="uddl_format" runat="server" Width="70%">
              <%--<asp:ListItem>MDF</asp:ListItem>--%>
              <asp:ListItem>CSV</asp:ListItem>
            </asp:DropDownList>
          </td>
        </tr>
      </asp:Panel>
      <tr class="trhide">
        <td style="width: 12%; height: 27px;">
        </td>
        <td align="left" style="width: 88%;">
          <asp:TextBox ID="otxt_Unitkey" runat="server" Width="20%"></asp:TextBox>
          <asp:TextBox ID="utxt_replace" runat="server" Width="20%"></asp:TextBox>
        </td>
      </tr>
      <asp:Panel ID="PnlUnit" runat="server">
        <tr>
          <td class="tdlabel">
            <asp:Label ID="Label2" runat="server" Text="Unit Organisasi"></asp:Label>
          </td>
          <td align="left" style="height: 24px; width: 533px;">
            <asp:TextBox ID="utxt_Kdunit" runat="server" Width="20%"></asp:TextBox>
            <asp:ImageButton ID="ubtn_Lookup" runat="server" CausesValidation="False" ImageAlign="AbsMiddle"
              ImageUrl="~/Images/IconAdvSearch_old.gif" OnClick="ubtn_Lookup_Click" />
            <asp:TextBox ID="utxt_Nmunit" runat="server" Width="70%"></asp:TextBox>
          </td>
        </tr>
      </asp:Panel>
      <asp:Panel ID="PnlFile" runat="server">
        <tr>
          <td class="tdlabel">
            <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label>
          </td>
          <td class="tdinput">
            <input type="file" id="utxt_file" runat="server" style="width: 100%" />
            <asp:CheckBox ID="uchk_Replace1" runat="server" Checked="false" Text="Delete Insert" />
          </td>
        </tr>
      </asp:Panel>
      <%--    <tr>
    <td class="tdlabel">
      <asp:Label ID="ulbl_file" runat="server" Text="Nama File"></asp:Label></td>
    <td class="tdinput">
      <asp:TextBox ID="utxt_file" runat="server" Width="80%"></asp:TextBox>
      <asp:Button ID="Browse" runat="server" Text="Browse"  /></td>
  </tr>
      --%>
      <tr>
        <td class="tdlabel">
          <asp:Label ID="Label1" runat="server" Text="Tahun Database"></asp:Label>
        </td>
        <td class="tdinput">
          <asp:DropDownList ID="uddl_Thn" runat="server" Width="15%">
          </asp:DropDownList>
          <%--<asp:CheckBox ID="uchk_Replace1" runat="server" Checked="false" Text="Delete Insert" />--%>
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
      <asp:Panel ID="Pnldbinter" runat="server">
        <tr>
          <td class="tdlabel">
            <asp:Label ID="ulbl_dbinter" runat="server" Text="Database Integrasi"></asp:Label>
          </td>
          <td class="tdinput" align="left">
            <asp:TextBox ID="utxt_dbinter" runat="server" Width="50%"></asp:TextBox>
          </td>
          <td class="tdinput">
            <asp:CheckBox ID="uchk_delin" runat="server" Checked="false" Text="Delete Insert" />
          </td>
          <td class="tdinput">
            <asp:CheckBox ID="uchk_copy" runat="server" Checked="false" Text="Tarik Data Pra RKA" />
          </td>
        </tr>
        <tr>
          <td class="tdlabellist">
            <asp:Label ID="Label6" runat="server" Text="Tanggal"></asp:Label>
          </td>
          <td class="tdinput" colspan="3">
            <ew:CalendarPopup ID="ucal_Tgl" runat="server" DisableTextBoxEntry="False" Visible="true"
              DayNameFormat="FirstTwoLetters" NullableLabelText="Pilih Tanggal">
            </ew:CalendarPopup>
          </td>
        </tr>
      </asp:Panel>
      <%-- <tr class="trhide">
            <td class="tdlabel">
              <asp:Label ID="ulbl_dbinter" runat="server" Text="Database Integrasi"></asp:Label>
            </td>
            <td class="tdinput">
              <asp:TextBox ID="utxt_dbinter" runat="server" Width="80%"></asp:TextBox>&nbsp;
            </td>
          </tr>--%>
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
        <td colspan="2" align="center" style="height: 20px">
          <center>
            <asp:Button ID="ubtn_exec" runat="server" Text="Kirim" OnClick="ubtn_exec_Click" />
            <asp:Button ID="ubtn_reset" runat="server" Text="Reset" OnClick="ubtn_reset_Click" />
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
          <asp:Label ID="ulbl_error" runat="server"></asp:Label>
        </td>
      </tr>
    </table>
  </asp:Panel>
  <asp:Panel ID="Panel1" runat="server" Width="95%" Visible="false">
    <table id="Table1" cellspacing="0" cellpadding="0" width="98%" border="0" class="tblhat75">
      <tr>
        <td class="tdhat">
           <asp:Label ID="Label11" runat="server" Text="Terima Data KUA/PPAS"></asp:Label>
        </td>
      </tr>
    </table>
    <table id="Table2" class="tblmaster75">
      <tr>
        <td class="tdlabel">
          <asp:Label ID="Label9" runat="server" Text="Tahun Database"></asp:Label>
        </td>
        <td class="tdinput">
          <asp:DropDownList ID="uddl_thang" runat="server" Width="20%">
          </asp:DropDownList>
        </td>
      </tr>
       <asp:Panel ID="Pnldbrkpd" runat="server">
        <tr>
          <td class="tdlabel">
            <asp:Label ID="Label10" runat="server" Text="Database RKPD"></asp:Label>
          </td>
          <td class="tdinput" align="left">
            <asp:TextBox ID="utxt_dbrkpd" runat="server" Width="50%"></asp:TextBox>
          </td>
        </tr>
      </asp:Panel>
     <%-- <tr class="trhide">
        <td class="tdlabel">
          <asp:Label ID="Label10" runat="server" Text="Nama Database RKPD"></asp:Label>
        </td>
        <td class="tdinput">
          <asp:TextBox ID="utxt_dbrkpd" runat="server" Width="80%"></asp:TextBox>
        </td>
      </tr>--%>
      <tr>
        <td align="center" colspan="2" style="height: 20px">
          <center>
            <asp:Button ID="Terima" runat="server" OnClick="ubtn_exec_Click" Text="OK" />
          </center>
        </td>
      </tr>
    </table>
  </asp:Panel>
  <%--    </ContentTemplate>
  </mwa:UpdatePanel>
  --%>
  <asp:Panel ID="Panel2" runat="server" Visible="false">
    <table id="Table3" class="tblmaster75">
      <tr>
        <td class="tdlabel">
          <asp:Label ID="Label12" runat="server" Text="Download File"></asp:Label>
        </td>
        <td class="tdinput" colspan="3">
          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="ulink_download_Click" Text="Download File"></asp:LinkButton>
        </td>
      </tr>
    </table>
  </asp:Panel>
  <%--  <act:UpdatePanelAnimationExtender ID="upae" runat="server">
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
  --%><%--  <mwa:UpdateProgress ID="UpdateProgress1" runat="server">
    <ProgressTemplate>
      <img src="../Images/LoadingCircle.gif" />
      <br />
      Sedang Memproses ...
    </ProgressTemplate>
  </mwa:UpdateProgress>
  --%></asp:Content>
