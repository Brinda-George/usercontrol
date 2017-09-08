<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FragmentCachingDemo2.aspx.cs" Inherits="WebformCalender.FragmentCachingDemo2" %>

<%@ Register Src="~/CachedControl.ascx" TagPrefix="cc" TagName="CachedControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel runat="server" GroupingText="User Control">
            <cc:CachedControl runat="server" ID="CachedControl1" /><br />
        </asp:Panel><br /><br />
        Server Time: <asp:Label ID="Label1" runat="server"></asp:Label><br />
        Client Time:
        <script type="text/javascript">
            document.write(Date());
        </script>
    </div>
    </form>
</body>
</html>
