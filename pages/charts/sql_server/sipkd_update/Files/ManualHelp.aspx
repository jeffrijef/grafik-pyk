<%@ page language="C#" masterpagefile="~/List.master" autoeventwireup="true" inherits="Files_ManualHelp, App_Web_xjs3dafi" title="Manual Help Download" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ucon_Master_List" Runat="Server">
   <table id="utbl_List" class="tblmaster">
        <tr>
            <td colspan="4" class="tblmaster" align"left">
                <asp:GridView ID="ugrv_list" runat="server" AutoGenerateColumns="False" cellpadding="3" EmptyDataText="Tidak Ada Daftar File" CssClass="grvmaster" PageSize="15"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" Borderwidth="1px"  AllowPaging="True"  >
                    <FooterStyle BackColor="White" ForeColor="#000066" CssClass="tdcenter" />
                    <Columns>
                        <asp:TemplateField HeaderText="Daftar File" >
                             <ItemTemplate>
                                <a href="<%# DataBinder.Eval(Container.DataItem,"FullName") %>"><%# DataBinder.Eval(Container.DataItem,"Name") %></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Maroon" />
                    <PagerStyle BackColor="White" ForeColor="#000066" Wrap="True" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#9ea2a2" Font-Bold="True" ForeColor="White" />
                    <PagerSettings PageButtonCount="15" />
                </asp:GridView>
                
                <asp:HiddenField ID="hiddenCatIDs" runat="server" />
            </td>
        </tr>
        
          
    </table>
</asp:Content>

