<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CachedControl.ascx.cs" Inherits="WebformCalender.CachedControl" %>
<%@ OutputCache Duration="60" VaryByParam="None" Shared="true" %>
<div>
        Select Designation: 
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Text="All" Value="All" Selected="True"></asp:ListItem> 
            <asp:ListItem Text="developer" Value="developer"></asp:ListItem> 
            <asp:ListItem Text="tester" Value="tester"></asp:ListItem> 
            <asp:ListItem Text="network engineer" Value="network engineer"></asp:ListItem> 
        </asp:DropDownList>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView><br />
        Server Time: <asp:Label ID="Label1" runat="server"></asp:Label><br />
        Client Time:<script type="text/javascript">
            document.write(Date());
        </script>
    </div>
