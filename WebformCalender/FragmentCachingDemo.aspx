<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FragmentCachingDemo.aspx.cs" Inherits="WebformCalender.FragmentCachingDemo" %>
<%@ OutputCache Duration="60" VaryByParam="None" %>
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
            <cc:CachedControl runat="server" ID="CachedControl" /><br />
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
