<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderControlConsumer.aspx.cs" Inherits="WebformCalender.Views.CalenderControlConsumer" %>

<%@ Register Src="~/ReusableViews/FullCalenderControl.ascx" TagPrefix="uc1" TagName="FullCalenderControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<uc1:FullCalenderControl runat="server" id="FullCalenderControl" />--%>
        <cc:cusCalender runat="server" id="cusCalender" DisableFutureDates="true"></cc:cusCalender>
        <asp:Button Text="GetSelectedDate" runat="server" ID="btnGetDate" OnClick="btnGetDate_Click"/><br />
        <asp:Label runat="server" ID="lblSelectedDate"></asp:Label>
    </div>
    </form>
</body>
</html>
