<%@ page language="C#" autoeventwireup="True" inherits="Index, App_Web_gly0oex0" %>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <title>Sistem Informasi Keuangan Daerah</title>
  <link href="../../../../resources/css/examples.css" rel="stylesheet" type="text/css" />
  <script runat="server">
        
  </script>
</head>
<body>
  <form id="Form1" runat="server">
  <ext:ResourceManager ID="ResourceManager1" runat="server" />
  <script type="text/javascript">
    var loadPage = function (tabPanel, node) {

      if (node.text == "Ke Halaman Muka") {
        window.location = "Sipkd.aspx";
      }
      else {

        var tab = tabPanel.getItem(node.id);

        if (!tab) {
          tab = tabPanel.add({
            id: node.id,
            title: node.text,
            closable: true,
            autoLoad: {
              showMask: true,
              url: node.attributes.href,
              mode: "iframe",
              maskMsg: "Loading " + node.attributes.href + "..."
            },
            listeners: {
              update: {
                fn: function (tab, cfg) {
                  cfg.iframe.setHeight(cfg.iframe.getSize().height - 20);
                },
                scope: this,
                single: true
              }
            }
          });
        }

        tabPanel.setActiveTab(tab);
      }
    }
  </script>
  <ext:Viewport ID="Viewport1" runat="server" Layout="Border">
    <Items>
      <ext:BorderLayout ID="BorderLayout1" runat="server">
        <North>
          <ext:Panel ID="Panel1" runat="server" Visible="true" AutoHeight="true">
            <Content>
              <ext:Panel ID="hider" runat="server" Visible="true" AutoHeight="true" />
              <center>
              <ext:Panel ID="ulbl_infouser" runat="server" Visible="true" Collapsed="true"/>
              </center>
            </Content>
          </ext:Panel>
        </North>
        <West CollapseMode="Mini" Collapsible="true">
          <ext:TreePanel ID="TreePanel1" runat="server" Width="300" Title="Daftar Menu" Icon="ChartOrganisation" ClearCls="x-form-clear-left">
            <Listeners>
              <Click Handler="if (node.attributes.href) { e.stopEvent(); loadPage(#{Pages}, node); }" />
            </Listeners>
            <%--            <Loader>
              <ext:PageTreeLoader OnNodeLoad="LoadPages" />
            </Loader>
            --%>
          </ext:TreePanel>
        </West>
        <Center>
          <ext:TabPanel ID="Pages" runat="server" EnableTabScroll="true" />
        </Center>
        <East>
        </East>
      </ext:BorderLayout>
    </Items>
  </ext:Viewport>
  </form>
</body>
</html>
