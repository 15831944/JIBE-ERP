﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ERLogGeneratorEnginesThreshold.aspx.cs" Inherits="ERLogGeneratorEnginesThreshold" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <link href="../../Styles/smscss_blue.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/tooltipsytle.css" rel="stylesheet" type="text/css" />
    <link href="../../Styles/CssCustomFilterControls.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/boxover.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../../Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <script src="../../Scripts/Common_Functions.js" type="text/javascript"></script>
    <script src="../../Scripts/JSCustomFilterControls.js" type="text/javascript"></script>
    <script src="../../Scripts/ucCustomDropDownList.js" type="text/javascript"></script>
    <link href="../../Styles/SMSPopup.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/SMSPopup.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ViewEdit(Id) {
            var value = document.getElementById('<%=lblLogId.ClientID%>').value;
            window.open("ERLogEdit.aspx?ViewID=" + Id + "&LOGID=" + value, "Test", "", "");
        }

        function MaskMoney(evt) {
            if (!(evt.keyCode == 9 || evt.keyCode == 110 || evt.keyCode == 8 || evt.keyCode == 37 || evt.keyCode == 39 || evt.keyCode == 46 || (evt.keyCode >= 48 && evt.keyCode <= 57) || (evt.keyCode >= 96 && evt.keyCode <= 105))) {
                return false;
            }
            var parts = evt.srcElement.value.split(',');

            if (parts.length > 2) return false;
            if (evt.keyCode == 46) return (parts.length == 1);
            if (parts[0].length >= 14) return false;
           
        }
    </script>
       <style type="text/css">
        .CellClass1
        {
            background-color: Red;
            color: White;
            border: 1px solid #cccccc;
            border-right: 1px solid #cccccc;
        }
        .CellClass0
        {
            border: 1px solid #cccccc;
            border-right: 1px solid #cccccc;
        }
        
        .HeaderCellColor
        {
            background-color: #3399CC;
            color: White;
        }
        .HeaderCellColor1
        {
            background-color: #BCF5A9;
            color: Black ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:UpdateProgress ID="upUpdateProgress" runat="server">
        <ProgressTemplate>
            <div id="blur-on-updateprogress">
                &nbsp;</div>
            <div id="divProgress" style="position: absolute; left: 49%; top: 30px; z-index: 201;
                color: black">
                <img src="../../Images/loaderbar.gif" alt="Please Wait" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <div style="border: 1px solid #cccccc; font-family: Tahoma; font-size: 12px; width: 100%;
        height: 100%;">
        <div id="page-header" class="page-title">
            <table cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td style="width: 95%; text-align: center;">
                        <b>GENERATOR ENGINES</b>
                    </td>
                    <td style="width: 5%; text-align: right; border-right: 2px solid Transparent">
                        <asp:Button ID="btnSave" Text="Save" runat="server" OnClick="btnSave_Click" BackColor="#AED7FF"
                            BorderStyle="None" Width="70px" Font-Size="11px" Font-Bold="false" Font-Names="verdana"
                            Height="20px" ForeColor="Blue" />
                    </td>
                </tr>
            </table>
            <asp:TextBox ID="lblLogId" runat="server"></asp:TextBox>
        </div>
       
    </div>
    <div style="text-align: left; overflow: scroll" id="dvPageContent" class="page-content-main">
        <table cellspacing="0" cellpadding="3" rules="all" border="1" style="background-color: White;
            border-color: #efefef; border-width: 1px; border-style: None; width: 100%; border-collapse: collapse;">
            <tr>
                <td style="width: 100%; border-right: solid; border-right-color: Gray; border-right-width: 1px"
                    align="left" valign="top">
                    <asp:FormView ID="FormView1" runat="server" Height="60px" Width="100%" BorderWidth="0px"
                        Font-Size="Small" OnDataBound="FormView1_DataBound">
                        <RowStyle CssClass="PMSGridRowStyle-css" Height="18" />
                        <ItemTemplate>
                            <table cellspacing="0" cellpadding="3" border="0.5" style="background-color: White;
                                border-color: #efefef; border-width: 1px; border-style: None; width: 100%; border-collapse: collapse;">
                                <tr>
                                    <td valign="top">
                                        <asp:Repeater ID="rpTrainingDetails" runat="server">
                                            <HeaderTemplate>
                                                <table cellspacing="1" cellpadding="3" rules="all" border="3" style="background-color: White;
                                                    border-color: #efefef; width: 100%;">
                                                    <tr class ="HeaderCellColor1" >
                                                        <td colspan="21" align="center">
                                                            GENERATOR ENGINES
                                                        </td>
                                                    </tr>
                                                    <tr align="center" class ="HeaderCellColor" >
                                                        <td rowspan="4">
                                                        </td>
                                                        <td rowspan="4">
                                                            <asp:Label ID="Label150" runat="server" class="verticaltext" Text="Running hrs."> </asp:Label>
                                                        </td>
                                                        <td colspan="13">
                                                            Temperature C
                                                        </td>
                                                        <td colspan="4">
                                                            Pressure-kg/cm2
                                                        </td>
                                                        <td rowspan="4">
                                                            <asp:Label ID="Label14" runat="server" class="verticaltext">  Amps </asp:Label>
                                                        </td>
                                                        <td rowspan="4">
                                                            <asp:Label ID="Label15" runat="server" class="verticaltext">  kW </asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr align="center" class ="HeaderCellColor" >
                                                        <td colspan="2" rowspan="2">
                                                            Exhaust
                                                        </td>
                                                        <td colspan="2" rowspan="2">
                                                            CW
                                                        </td>
                                                        <td colspan="2" rowspan="2">
                                                            LO
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label152" runat="server" class="verticaltext2"> Boost Air </asp:Label>
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label151" runat="server" class="verticaltext2"> Pedestal Bearing</asp:Label>
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label1" runat="server" class="verticaltext2"> Fuel IN </asp:Label>
                                                        </td>
                                                        <td colspan="4">
                                                            A/E LO COOLER
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label5" runat="server" class="verticaltext2">  L. O. </asp:Label>
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label11" runat="server" class="verticaltext2">  C. W. </asp:Label>
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label12" runat="server" class="verticaltext2">  Boost Air </asp:Label>
                                                        </td>
                                                        <td rowspan="3">
                                                            <asp:Label ID="Label13" runat="server" class="verticaltext2">   Fuel Oil </asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr align="center" class ="HeaderCellColor" >
                                                        <td colspan="2">
                                                            SW
                                                        </td>
                                                        <td colspan="2">
                                                            LO
                                                        </td>
                                                    </tr>
                                                    <tr align="center" class ="HeaderCellColor" >
                                                        <td>
                                                            Max
                                                        </td>
                                                        <td>
                                                            Min
                                                        </td>
                                                        <td>
                                                            In
                                                        </td>
                                                        <td>
                                                            Out
                                                        </td>
                                                        <td>
                                                            In
                                                        </td>
                                                        <td>
                                                            Out
                                                        </td>
                                                        <td>
                                                            In
                                                        </td>
                                                        <td>
                                                            Out
                                                        </td>
                                                        <td>
                                                            In
                                                        </td>
                                                        <td>
                                                            Out
                                                        </td>
                                                    </tr>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td align="left" style="height: 18px; background-color: #BCF5A9">
                                                        <asp:Label ID="Label234" runat="server" Text='Min' Width ="50px" ></asp:Label>
                                                          <asp:Label ID="lblid" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "ID")%>' Visible ="false"></asp:Label>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt1" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_RUNNING_HR")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt2" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_EXH_MAX")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt3" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_EXH_MIN")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt4" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_CW_IN")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt5" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_CW_OUT")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt6" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_LO_IN")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt7" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_LO_OUT")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt8" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_BOOSTAIR")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt9" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_PDL_BEARING")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt10" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_FUEL_IN")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt11" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_AE_SW_IN")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt12" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_AE_SW_OUT")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt13" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_AE_LO_IN")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt14" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_TEMP_AE_LO_OUT")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt15" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_PRESS_LO")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt16" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_PRESS_CW")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt17" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_PRESS_BOOST_AIR")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt18" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_PRESS_FUEL_OIL")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt19" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_AMPS")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt20" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Min_KW")%>'> </asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style=" border: 1px solid ActiveBorder">
                                                    <td align="left" style="height: 18px; background-color: #F78181">
                                                        <asp:Label ID="Label7" runat="server" Text='MAX'></asp:Label>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt21" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_RUNNING_HR")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt22" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_EXH_MAX")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt23" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_EXH_MIN")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt24" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_CW_IN")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt25" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_CW_OUT")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt26" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_LO_IN")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt27" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_LO_OUT")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt28" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_BOOSTAIR")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt29" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_PDL_BEARING")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt30" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_FUEL_IN")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt31" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_FUEL_IN")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt32" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_AE_SW_OUT")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt33" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_AE_LO_IN")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt34" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_TEMP_AE_LO_OUT")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt35" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_PRESS_LO")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt36" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_PRESS_CW")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt37" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_PRESS_BOOST_AIR")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt38" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_PRESS_FUEL_OIL")%>'></asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt39" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_AMPS")%>'> </asp:TextBox>
                                                    </td>
                                                    <td align="left" style="height: 18px;">
                                                        <asp:TextBox ID="txt40" runat="server" Width="40px" CssClass="input centeralinment"
                                                            MaxLength="7" onKeydown="JavaScript:return MaskMoney(event);" Text='<%# DataBinder.Eval(Container.DataItem, "Max_KW")%>'> </asp:TextBox>
                                                    </td>
                                                </tr>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                </table>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
