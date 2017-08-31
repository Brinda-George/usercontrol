<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FullCalenderControl.ascx.cs" Inherits="WebformCalender.ReusableViews.FullCalenderControl" %>
<div>
        <table>
            <tr>
                <td>
                    <asp:Label runat="server" ID="lblDisplayText" Text="DoB"></asp:Label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtDate" ></asp:TextBox>
                </td>
                <td>
                    <asp:ImageButton ID="imgBtnCalender" runat="server" ImageUrl="~/Images/calendar.png" height="30px" OnClick="imgBtnCalender_Click"/>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Calendar runat="server" ID="CalDate" Visible="false" OnSelectionChanged="CalDate_SelectionChanged" OnDayRender="CalDate_DayRender"></asp:Calendar>
                </td>
            </tr>
        </table>
    </div>