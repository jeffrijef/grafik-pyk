<%@ page language="C#" autoeventwireup="true" inherits="pLookup_LookUpBakFile, App_Web_p4vdymow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Browse File</title>
     <script type="text/javascript">
        function GetRowValue(val)
        {
            window.opener.document.getElementById("ctl00_ucon_Master_List_utxt_file").value = val; //hardcoded value used to minimize the code. ControlID can be passed as query string to the popup window
            window.close();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
      <asp:GridView ID="ugvw_LookUp" runat="server" AutoGenerateColumns="False" 
         width="90%" OnRowDataBound="ugvw_LookUp_RowDataBound"  ShowFooter="True" 
         cellpadding="4" AllowPaging="True" GridLines="None" ForeColor="#333333" 
         DataKeyNames="Name" onpageindexchanging="ugvw_LookUp_PageIndexChanging" 
        onselectedindexchanged="ugvw_LookUp_SelectedIndexChanged" 
        onrowcommand="ugvw_LookUp_RowCommand">
          <Columns>
            <asp:TemplateField>
              <AlternatingItemTemplate>
                  <asp:LinkButton ID="btnSelect" runat="server" Text="Pilih" />
              </AlternatingItemTemplate>
              <ItemTemplate>
                  <asp:LinkButton ID="btnSelect" runat="server" Text="Pilih" />
              </ItemTemplate>
              <ItemStyle width="5%"/>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nama Path" >
              <EditItemTemplate>
                <asp:Label ID="Label1a" runat="server" Text='<%# Bind("FullName") %>'  Font-Names="Arial Narrow"></asp:Label>
              </EditItemTemplate>
              <ItemTemplate>
                 <asp:Label ID="Label1" runat="server" Text='<%# Bind("FullName") %>'  Font-Names="Arial Narrow"></asp:Label>
              </ItemTemplate>
              <ItemStyle width="15%" Font-Names="Arial Narrow" Font-Size="Small"/>
              <HeaderStyle  HorizontalAlign="Left" Font-Names="Arial Narrow"/>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Size">
              <EditItemTemplate>
                <asp:Label ID="Label2a" runat="server" Text='<%# Bind("Length") %>' Font-Names="Arial Narrow"></asp:Label>
              </EditItemTemplate>
              <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Length") %>' Font-Names="Arial Narrow"></asp:Label>
              </ItemTemplate>
              <ItemStyle width="5%" Font-Names="Arial Narrow" Font-Size="Small"/>
              <HeaderStyle  HorizontalAlign="Left" Font-Names="Arial Narrow" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date Modified">
              <EditItemTemplate>
                <asp:Label ID="Label3a" runat="server" Text='<%# Bind("LastWriteTime") %>' Font-Names="Arial Narrow"></asp:Label>
              </EditItemTemplate>
              <ItemTemplate>
                  <asp:Label ID="Label3" runat="server" Text='<%# Bind("LastWriteTime") %>' Font-Names="Arial Narrow"></asp:Label>
              </ItemTemplate>
              <ItemStyle width="10%" Font-Names="Arial Narrow" Font-Size="Small"/>
              <HeaderStyle  HorizontalAlign="Left" Font-Names="Arial Narrow" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="File Name">
              <EditItemTemplate>
                <asp:Label ID="Label4a" runat="server" Text='<%# Bind("Name") %>' Font-Names="Arial Narrow"></asp:Label>
              </EditItemTemplate>
             
              <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Name") %>' Font-Names="Arial Narrow"></asp:Label>
              </ItemTemplate>
              <ItemStyle width="5%" Font-Names="Arial Narrow" Font-Size="Small"/>
              <HeaderStyle  HorizontalAlign="Left" Font-Names="Arial Narrow" />
            </asp:TemplateField>
          </Columns>
          <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
          <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
          <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
          <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <EditRowStyle BackColor="#999999" />
      </asp:GridView>
    </center>
    </div>
    </form>
</body>
</html>
