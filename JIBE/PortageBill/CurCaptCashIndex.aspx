﻿<%@ Page Title="Capt Cash (Un-Finalized) " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CurCaptCashIndex.aspx.cs" Inherits="PortageBill_CurCaptCashIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script type="text/javascript">
        function ViewPopupId(querystring) {
            javascript: window.open("CaptRpt.aspx?" + querystring);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="page-content" style="border: 1px solid #cccccc; z-index: -2; overflow: auto;">
        <div id="page-title" style="margin: 2px; border: 1px solid #cccccc; height: 20px;
            vertical-align: bottom; background: url(../Images/bg.png) left -10px repeat-x;
            color: Black; text-align: left; padding: 2px; background-color: #F6CEE3;">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td style="width: 33%;">
                    </td>
                    <td style="width: 33%; text-align: center; font-weight: bold;">
                        <asp:Label ID="lblPageTitle" runat="server" Text="Capt Cash (Un-Finalized)"></asp:Label>
                    </td>
                    <td style="width: 33%; text-align: right;">
                    </td>
                </tr>
            </table>
        </div>
        <div style="white-space:nowrap">
              <div id="dvMain" style="border: 1px solid #cccccc;  margin: 0 auto; width: 50%;padding:15px 15px 15px 15px;">
            <table style="width:100%" cellpadding="6">
                <tr>
                    <td align="right">
                        Fleet
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlFleet" runat="server" Width="156px" OnSelectedIndexChanged="ddlFleet_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                    <td align="right">
                        Vessel
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlVessel" runat="server" Width="156px" OnSelectedIndexChanged="ddlVessel_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="CaptCashGV" runat="server" AutoGenerateColumns="False" CellPadding="4"
                ForeColor="#333333" GridLines="None" PageSize="2000"
                OnRowCommand="CaptCashGV_RowCommand" EmptyDataText="No Record Found !!">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                 <asp:TemplateField HeaderText="Vessel" ItemStyle-Width="100px" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="lblVessel" runat="server" Text='<%# Eval("Vessel_Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="From Date" ItemStyle-Width="100px" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="lblfrmDt" runat="server" Text=' <%# Eval("From_date","{0:dd/MM/yyyy}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="To Date" ItemStyle-Width="100px" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:Label ID="lbltoDt" runat="server" Text='<%# Eval("to_date","{0:dd/MM/yyyy}" ) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText=" Opening Balance "  >
                        <ItemTemplate>
                            <asp:Label ID="lblOpnBal" runat="server" Text='<%# Eval("Opening_Bal","{0:#,##.##}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText=" Current Balance " >
                        <ItemTemplate>
                            <asp:Label ID="lblOpnCls" runat="server" style="font-weight:bolder" Text='<%# Eval("Closing_Bal","{0:#,##.##}") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Right" />
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Unlock" Visible="False">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnUnlcok" runat="server" Enabled="false" CommandName="UnlcokReport"
                                ImageUrl="~/images/unlock.gif" Width="20px" Height="20px" OnCommand="unlockreport"
                                CommandArgument='<%#Eval("ID")+","+Eval("Vessel_ID")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ReportID" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblrptID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="VesselCode" Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="lblVesselCode" runat="server" Text='<%# Eval("Vessel_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="View Details" ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="btnCaptCash" runat="server" CommandName="ViewDetails" Text="View"
                                CommandArgument='<%#Eval("Vessel_ID").ToString() + "," + Eval("ID").ToString() %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        </div>
  
    </div>
</asp:Content>

