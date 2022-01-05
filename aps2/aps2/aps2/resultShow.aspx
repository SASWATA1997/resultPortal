<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="resultShow.aspx.cs" Inherits="aps2.resultShow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <asp:Table ID="Table2" runat="server" Height="46px" Width="492px" BorderColor="Red" BorderStyle="Solid">
        <asp:TableRow runat="server" BackColor="White" BorderStyle="None">
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Inset" ForeColor="Black">NAME</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" ForeColor="Black">
                <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" BorderStyle="Outset" ForeColor="Black">ID</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_id" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </br>
    <asp:Table ID="Table1" runat="server" Height="151px" Width="400px" BorderColor="Red" BorderStyle="Solid" style="margin-right: 112px">
        <asp:TableRow runat="server" BackColor="#99CCFF" BorderStyle="None">
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Inset" ForeColor="Black">SUBJECT</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" ForeColor="Black">MARKS</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" BorderStyle="Outset">Accountancy</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_acc" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" BorderStyle="Outset">English</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_eng" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" BorderStyle="Outset">Maths</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_math" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" BorderStyle="Outset">Economics</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_eco" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" BorderStyle="Outset">Business_Studies</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_bs" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server" BackColor="#66CCFF">
            <asp:TableCell runat="server" BorderStyle="Outset" ForeColor="Black">TOTAL</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset" ForeColor="Black">
                <asp:Label ID="lbl_tot" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table></br>
    <asp:Table ID="Table3" runat="server" Height="43px" Width="242px" BorderColor="Red" BorderStyle="Solid" style="margin-bottom: 0px">
        <asp:TableRow runat="server" BackColor="#99CCFF" BorderStyle="None">
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Inset" ForeColor="Black">RESULT</asp:TableCell>
            <asp:TableCell runat="server" BorderColor="Black" BorderStyle="Solid" ForeColor="Black">
                <asp:Label ID="lbl_res" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server" BackColor="#66CCFF" ForeColor="Black">
            <asp:TableCell runat="server" BorderStyle="Outset">GRADE</asp:TableCell>
            <asp:TableCell runat="server" BorderStyle="Outset">
                <asp:Label ID="lbl_gra" runat="server" Text="Label"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Content>
