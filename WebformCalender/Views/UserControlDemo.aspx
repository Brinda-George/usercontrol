<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserControlDemo.aspx.cs" Inherits="WebformCalender.Views.UserControlDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblDisplayText" Text="DoB"></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtDate"></asp:TextBox>
                </td>
                <td>
                    <asp:ImageButton ID="imgBtnCalender" runat="server" ImageUrl="~/Images/calendar.png" height="30px" OnClick="imgBtnCalender_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Calendar runat="server" ID="CalDate" Visible="false" OnSelectionChanged="CalDate_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
