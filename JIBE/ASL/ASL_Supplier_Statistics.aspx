﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ASL_Supplier_Statistics.aspx.cs" Inherits="ASL_ASL_Supplier_Statistics" %>

<%@ Register Src="../UserControl/ucCustomPager.ascx" TagName="ucCustomPager" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Supplier Statistics</title>
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.ui.widget.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.ui.core.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.ui.mouse.js" type="text/javascript"></script>
    <script src="../Scripts/jquery.ui.draggable.js" type="text/javascript"></script>
    <script src="../Scripts/ModalPopUp.js" type="text/jscript"></script>
    <link href="../Styles/tooltipsytle.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/boxover.js" type="text/javascript"></script>
    <link href="../Styles/SMSPopup.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/SMSPopup.js" type="text/javascript"></script>
    <link href="~/Styles/smscss_blue.css" rel="stylesheet" type="text/css" />
    <link href="../Purchase/styles/Purchase.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/crew_css.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
         /*The Following Code added To adjust height of the popup when open after entering search criteria.*/
         $(document).ready(function () {
             window.parent.$("#ASL_Supplier_Statistics").css("height", (parseInt($("#pnl").height()) + 50) + "px");
             window.parent.$(".xfCon").css("height", (parseInt($("#pnl").height()) + 50) + "px").css("top", "50px");
         });
    </script>
</head>
<body style="border: 0px solid #cccccc; font-family: Tahoma; font-size: 12px; width: 99%;">
<table  style="border: 0px solid #cccccc; font-family: Tahoma; overflow: Auto; font-size: 12px; width: 100%;">
                                 <tr><td>
    <form id="form1" runat="server">
    <div id="printablediv" style="border: 1px solid #cccccc; font-family: Tahoma; font-size: 12px;
        color: Black; height: 100%;">
         <div class="error-message" onclick="javascript:this.style.display='none';">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
        <asp:Panel ID="pnl" runat="server" Visible="true">
       
            
                    <div id="Div1" class="page-title">
                        Supplier Statistics
                    </div>
               
             <table width="100%" cellpadding="2" cellspacing="0">
             <tr>
               
               <td colspan="3">  <div  style="font-size: 15px; font-family: Tahoma;">
               Supplier Code -  <asp:Label ID="lblSupplierCode" runat="server" Width="100px"  Text=""></asp:Label>&nbsp;&nbsp;
                Supplier Name -  <asp:Label ID="lblSuppliername" runat="server" Width="400px"  Text=""></asp:Label>
                 </div>
                </td>
            </tr>
            <tr>
               <td colspan="3" style=" height:20Px;"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <div style="height: 400px;  max-height: 400px">
                       <asp:Literal ID="ltSupplierStatistics" runat ="server"></asp:Literal>
                    <%--  <asp:GridView ID="gvStatistics" runat="server" EmptyDataText="NO RECORDS FOUND" AutoGenerateColumns="true"
                                 DataKeyNames="ID" CellPadding="0" CellSpacing="0"
                                Width="100%" GridLines="both" CssClass="gridmain-css" RowStyle-HorizontalAlign="Center">
                                <HeaderStyle CssClass="HeaderStyle-css" />
                                <RowStyle CssClass="RowStyle-css"  />
                                <AlternatingRowStyle CssClass="AlternatingRowStyle-css" />
                                <SelectedRowStyle CssClass="SelectedRowStyle-css" />
                                <EmptyDataRowStyle CssClass="EmptyDataRowStyle-css" />
                                
                            </asp:GridView>--%>
                    </div>
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    </form>
    </td></tr></table>
</body>
</html>
