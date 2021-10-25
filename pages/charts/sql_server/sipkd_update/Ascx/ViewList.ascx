<%@ control language="C#" autoeventwireup="true" inherits="Ascx_ViewList, App_Web_tfr0owwv" %>
<%@ Register assembly="GridViewPaging.Controls" namespace="GridViewPaging.Controls" tagprefix="cc1" %>
<%@ Register Assembly="Microsoft.Web.Atlas" Namespace="Microsoft.Web.UI" TagPrefix="mwa" %>
<%@ Register Assembly="AtlasControlToolkit" Namespace="AtlasControlToolkit" TagPrefix="act" %>
<%@ Register TagPrefix="cx" TagName="FormEntry" Src="FormEntry.ascx" %>
<%@ Register Assembly="eWorld.UI.Compatibility, Version=2.0.6.2393, Culture=neutral, PublicKeyToken=24d65337282035f2" Namespace="eWorld.UI.Compatibility" TagPrefix="ew" %>
<cc1:PagingGridView ID="ugrv_list" runat="server" 
              cellpadding="3" 
              BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
              Borderwidth="1px" AllowPaging="True" 
              AutoGenerateColumns="False" 
              EmptyDataText="Tidak ditemukan data pada database" 
              CssClass="grvmaster" 
              OnRowCommand="ugrv_list_RowCommand" 
              OnRowCreated="ugrv_list_RowCreated" 
              OnPageIndexChanging="ugrv_list_PageIndexChanging" 
              OnRowEditing="ugrv_list_RowEditing" 
              OnRowUpdating="ugrv_list_RowUpdating" 
              OnRowCancelingEdit="ugrv_list_RowCancelingEdit"
              OnRowDataBound="ugrv_list_RowDataBound">
  <Columns>
    <asp:ButtonField HeaderText="C1" ShowHeader="False"></asp:ButtonField>
    <asp:TemplateField HeaderText="C2" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value2" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value2" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value2" runat="server" Visible="false"></asp:Label>
        <asp:CheckBox ID="uchk_Value2" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value2" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal2" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal2" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal2" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal2" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal2" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal2" runat="server"></asp:Label>
      </FooterTemplate>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
      <ItemStyle Wrap="true" Height="100%"/>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C3" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value3" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value3" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value3" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value3" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value3" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal3" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal3" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal3" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal3" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal3" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal3" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C4" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value4" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value4" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value4" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value4" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value4" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal4" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal4" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal4" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal4" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal4" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal4" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C5" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value5" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value5" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value5" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value5" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value5" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal5" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal5" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal5" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal5" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal5" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal5" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C6" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value6" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value6" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value6" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value6" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value6" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal6" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal6" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal6" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal6" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal6" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal6" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C7" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value7" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value7" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value7" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value7" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value7" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal7" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal7" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal7" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal7" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal7" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal7" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C8" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value8" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value8" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value8" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value8" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value8" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal8" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal8" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal8" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal8" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal8" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal8" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C9" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value9" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value9" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value9" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value9" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value9" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal9" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal9" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal9" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal9" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal9" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal9" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="C10" ShowHeader="False">
      <EditItemTemplate>
        <asp:TextBox ID="utxt_Value10" runat="server" MaxLength="22"></asp:TextBox>
        <ew:NumericBox ID="unum_Value10" runat="server" MaxLength="15" DecimalSign="," GroupingSeparator="."></ew:NumericBox>
        <asp:Label ID="ulbl_Value10" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_Value10" runat="server" Visible="false"></asp:CheckBox>
        <asp:DropDownList ID="uddl_Value10" runat="server" Visible="false"></asp:DropDownList>
      </EditItemTemplate>
      <ItemTemplate>
        <asp:Label ID="ulbl_LabelVal10" runat="server"></asp:Label>
        <asp:CheckBox ID="uchk_LabelVal10" runat="server" Visible="false"></asp:CheckBox>
        <asp:LinkButton ID="ubtn_LabelVal10" runat="server" Visible="false"></asp:LinkButton>
        <asp:TextBox ID="utxt_LabelVal10" runat="server" BorderWidth="0" BorderStyle="None" Visible="false" TextMode="MultiLine" ReadOnly="true" style="overflow:hidden;width:100%;height:auto"></asp:TextBox>
      </ItemTemplate>
      <FooterTemplate>
        <asp:Label ID="ulbl_SubTotal10" runat="server"></asp:Label><br />
        <asp:Label ID="ulbl_GrandTotal10" runat="server"></asp:Label>
      </FooterTemplate>
      <ItemStyle Wrap="true" Height="100%"/>
      <FooterStyle HorizontalAlign="Right" Font-Bold="True" />
    </asp:TemplateField>
    <asp:CommandField HeaderText="Edit" ShowEditButton="True" CausesValidation="false">
      <ItemStyle Width="5%" />
    </asp:CommandField>
    <asp:TemplateField>
      <HeaderTemplate>
        <input id='chkAll' type='checkbox' onclick='ChangeAllCheckBoxStates(checked,<%= Position %>);'>
      </HeaderTemplate>
      <ItemStyle Width="5%" />
      <ItemTemplate>
        <asp:CheckBox ID="uchk_delete" runat="server" />
      </ItemTemplate>
    </asp:TemplateField>
    <asp:ButtonField ButtonType="Image" HeaderText="Tambah Anak" ImageUrl="~/Images/anak.bmp"
      CommandName="AddChild">
      <ItemStyle Width="5%" />
      <HeaderStyle CssClass="grvtxtmod" />
    </asp:ButtonField>
    <asp:ButtonField ButtonType="Image" HeaderText="Tambah Saudara" ImageUrl="~/Images/saudara.bmp"
      CommandName="AddNode">
      <ItemStyle Width="5%" />
      <HeaderStyle CssClass="grvtxtmod" />
    </asp:ButtonField>
    <asp:ButtonField ButtonType="Image" HeaderText="Cetak" ImageUrl="~/Images/Print.gif"
      CommandName="Print">
      <ItemStyle Width="5%" />
      <HeaderStyle CssClass="grvtxtmod" />
    </asp:ButtonField>
  </Columns>
  <RowStyle ForeColor="#000066" />
  <FooterStyle BackColor="White" ForeColor="#000066"  />
  <SelectedRowStyle BackColor="lightblue" Font-Bold="True" ForeColor="Maroon" />
  <HeaderStyle BackColor="Control" Font-Bold="True" Font-Size="Small" ForeColor="Black" />  
  <PagerStyle CssClass="paging_gridview_pgr" />
</cc1:PagingGridView>

<asp:HiddenField ID="hiddenCatIDs" runat="server" />
