<%@ control language="C#" autoeventwireup="true" inherits="Ascx_FormEntry, App_Web_n3s4dhoo" %>
<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register Assembly="eWorld.UI.Compatibility, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2"
  Namespace="eWorld.UI.Compatibility" TagPrefix="ew" %>
<asp:GridView ID="ugrv_form" runat="server" AutoGenerateColumns="False" CellPadding="3"
  EmptyDataText="Tidak ditemukan data pada database" CssClass="grvmaster" DataKeyNames="Name,ModeEdit,AllowEmpty,AllowRefresh,Value,Width,Editable,Enable,Flexible"
  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCreated="ugrv_form_RowCreated"
  CaptionAlign="Top" ShowHeader="False" AllowPaging="True" OnPageIndexChanging="ugrv_form_PageIndexChanging">
  <FooterStyle BackColor="White" ForeColor="Black" CssClass="tdcenter" />
  <Columns>
    <asp:TemplateField HeaderText="Parameter">
      <ItemStyle HorizontalAlign="Left" Width="15%" CssClass="tdlabellist" />
      <ItemTemplate>
        <asp:Label ID="ulbl_Label" runat="server" Text='<%# Bind("Label") %>'></asp:Label>
      </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Nilai">
      <EditItemTemplate>
      </EditItemTemplate>
      <ItemStyle HorizontalAlign="Left" />
      <ItemTemplate>
        <asp:TextBox ID="utxt_Value" runat="server" CssClass="txtmaster" Text='<%# Bind("LabelValue") %>'
          Width="90%" ></asp:TextBox>
        <asp:DropDownList ID="uddl_Value" runat="server" CssClass="txtmaster" Width="75%"
          Visible="false" CausesValidation="false" Height="20px" />
        <asp:ImageButton ID="ubtn_Lookup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/IconAdvSearch_old.gif"
          Visible="false" CausesValidation="false" />
        <asp:Image ID="uimg_Lookup" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/IconAdvSearch_old.gif"
          Visible="false" />
        <asp:RadioButtonList ID="orbl_Type" runat="server" RepeatDirection="Horizontal" Visible="false">
          <asp:ListItem Value="D">Detil</asp:ListItem>
          <asp:ListItem Value="H">Header</asp:ListItem>
        </asp:RadioButtonList>
        <ew:NumericBox ID="unum_Value" runat="server" CssClass="txtmaster" Width="90%" Visible="false"
          MaxLength="15" DecimalSign="," GroupingSeparator="." DecimalPlaces="2" Text='<%# Bind("Value") %>'></ew:NumericBox>
        <asp:RequiredFieldValidator ID="urfv_Value" runat="server" ControlToValidate="utxt_Value"
          Visible="false" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:Label ID="ulbl_Label2" runat="server" Text='<%# Bind("Label2") %>' Visible="false"
          Width="10%"></asp:Label>
        <asp:TextBox ID="utxt_Value2" runat="server" CssClass="txtmaster" Text='<%# Bind("LabelValue2") %>'
          Width="20%" Visible="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="urfv_Value2" runat="server" ControlToValidate="utxt_Value2"
          Visible="false" ErrorMessage="*" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:TextBox ID="utxt_Value3" runat="server" CssClass="txtmaster" Text='<%# Bind("Value3") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <asp:TextBox ID="utxt_Value4" runat="server" CssClass="txtmaster" Text='<%# Bind("Value4") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <asp:CheckBox ID="uchk_Value" runat="server" Visible="false"></asp:CheckBox>
        <asp:TextBox ID="utxt_Par1" runat="server" CssClass="txtmaster" Text='<%# Bind("Value3") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <asp:TextBox ID="utxt_Par2" runat="server" CssClass="txtmaster" Text='<%# Bind("Value3") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <asp:TextBox ID="utxt_Par3" runat="server" CssClass="txtmaster" Text='<%# Bind("Value3") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <asp:TextBox ID="utxt_Par4" runat="server" CssClass="txtmaster" Text='<%# Bind("Value3") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <asp:TextBox ID="utxt_Par5" runat="server" CssClass="txtmaster" Text='<%# Bind("Value3") %>'
          Width="1%" Visible="false"></asp:TextBox>
        <ew:CalendarPopup ID="ucal_Value" runat="server" DisableTextBoxEntry="False" CssClass="txtmaster"
          Visible="false" DayNameFormat="FirstTwoLetters" NullableLabelText="Pilih Tanggal"
          OnDateChanged="DateChanged">
        </ew:CalendarPopup>
        <asp:Image ID="uimg_Link" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Images/red_link.jpg"
          Visible="false" />
      </ItemTemplate>
    </asp:TemplateField>
  </Columns>
  <RowStyle ForeColor="Black" />
  <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Maroon" />
  <PagerStyle BackColor="White" ForeColor="Black" Wrap="True" HorizontalAlign="Left" />
  <HeaderStyle BackColor="#9ea2a2" Font-Bold="True" ForeColor="White" />
  <PagerSettings PageButtonCount="15" />
</asp:GridView>

