<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="Main" Title="Document Management System" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <style type="text/css">
        img
        {
            padding-right: 2px;
        }
        .box
        {
            width: 80px;
            height: 20px;
            background-color: #efefef;
            border: 1px solid inset;
        }
    </style>
    <script type="text/javascript" language="javascript">

        var lastObj;
        var filename;
        var manuals;
        var manuals1;



        function getImgDirectory(source) {
            return source.substring(0, source.lastIndexOf('/') + 1);
        }
        function OpenMainPop() {
            var selNodeUrl = getSelectedNodeUrl();
            var nodeIdText = document.getElementById("BrowseTreeView_SelectedNode").value;

            if (selNodeUrl == "") { myMessage("Please select a file"); return false; }
            if (selNodeUrl.indexOf('_blank') > 0) { myMessage("Please select a file"); return false; }

            var filePath = selNodeUrl;

            window.open("MainPop.aspx?" + "path=" + filePath + "&SelectedNodeValue=" + nodeIdText, "DOCUMENT", "toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=yes, width=650, height=300,top=200,left=300");
            manuals = undefined;
        }



        function print() {
            try {
                var selNodeUrl = getSelectedNodeUrl();
                if (selNodeUrl == undefined || selNodeUrl == "") {
                    myMessage("No Document selected for printing!")
                }
                else {
                    if (selNodeUrl.indexOf('_blank') > 0) { myMessage("Please select a file"); return false; }
                    if (selNodeUrl.indexOf(".pdf") > 0) {
                        myMessage("Please use print button available inside pdf document.")
                    }
                    else {
                        frames["docPreview"].focus();
                        frames["docPreview"].print();
                    }
                }
            }
            catch (ex)
        { }
        }
        function openSearchWindow(url) {
            document.getElementById("docPreview").src = url;

        }
        function DocOpenOnIFrame(url) {
            document.getElementById("docPreview").src = url;
        }
        function resizeFrame() {
            var windowheight = window.screen.height;
            var frame = document.getElementById("docPreview");
            var frameHeight = frame.style.height.replace('px', '');

            //if ( windowheight > 500)  
            //{ 
            //frame.style.height = windowheight - 260 + "px"; }
        }
    </script>
    <script src="JS/common.js" type="text/javascript"></script>
    <script src="js/VwdCmsSplitterBar.js" type="text/javascript"></script>
    <link href="css/Main.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/AsyncResponse.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div id="divMessage" align="center" style="position: absolute; top: 5px; left: 200px;
        display: none;">
        <asp:Label ID="dvMessage" runat="server" ForeColor="Blue" Font-Size="Medium"></asp:Label>
    </div>
    <%--   <a id="addnew" style="background-color:White;border-style:solid;border-width:0px;color:Blue;font-weight:bold;font-family:Calibri" 
                 href="javascript:DivStatesaddlink1()" visible="true">Create Folder</a>--%>
    <input id="FieldNameHdn" type="hidden" runat="server" />
    <div style="overflow: auto;">
        <table width="100%" style="border: 2px solid #B0C4DE;">
            <tr>
                <td style="vertical-align: top; background-color: #f8f8f8; width: 250px;">
                    <div style="background-color: #f8f8f8; text-align: left;
                        height: 600px; width: 250px; overflow: auto; z-index: 1; border: 1px solid inset;">
                        <div style="position:absolute; color: Black; overflow: auto; width: 230px; text-align: right;">
                            <asp:ImageButton ID="btnRefresh" runat="server" Text="Refresh" ImageUrl="~/Images/refresh.png" />
                        </div>
                        <asp:TreeView ID="BrowseTreeView" runat="server" Style="margin-right: 1px" BorderColor="#F3F1CD"
                            Font-Bold="False" Font-Names="Arial" Font-Size="Small" ForeColor="Black" EnableViewState="False"
                            ImageSet="XPFileExplorer" NodeIndent="15" AutoGenerateDataBindings="False" OnSelectedNodeChanged="BrowseTreeView_SelectedNodeChanged">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="False" ForeColor="#6666AA" BackColor="#99FF66" />
                            <SelectedNodeStyle Font-Underline="False" ForeColor="#6666AA" BackColor="#99FF66" />
                            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px"
                                NodeSpacing="0px" VerticalPadding="2px" />
                        </asp:TreeView>
                    </div>
                </td>
                <td style="vertical-align: top;">
                    <iframe id="docPreview" name="docPreview" style="height: 600px; width: 100%; border: 0px;
                        padding: 0; margin: 0;" frameborder="0"></iframe>
                </td>
            </tr>
        </table>
        <input id="hidden_SelectedNodeURL" type="hidden" runat="server" />
        <input id="hdnForCheckINSelectedNode" type="hidden" runat="server" />
    </div>
    <%--<VwdCms:SplitterBar runat="server" ID="vsbSplitter1" LeftResizeTargets="tdTree1;Div1"
        MinWidth="200" MaxWidth="500" BackgroundColor="lightsteelblue" BackgroundColorLimit="firebrick"
        BackgroundColorHilite="steelblue" BackgroundColorResizing="purple" SaveWidthToElement="200px"
        OnResizeFunction="splitterOnResize;" Style="background-image: url(vsplitter.gif);
        background-position: center center; background-repeat: no-repeat;" />--%>
    <script type="text/javascript" language="javascript">
        resizeFrame();
    </script>
</asp:Content>