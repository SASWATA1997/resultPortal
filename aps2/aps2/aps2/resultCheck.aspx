<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="resultCheck.aspx.cs" Inherits="aps2.resultCheck" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="jquery/jquery-3.6.0.min.js"></script>
    <link href="jquery/jquery-ui.min.css" rel="stylesheet" />
    <script src="jquery/jquery-ui.min.js"></script>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="I.D."></asp:Label></td>
            <td>
                <asp:TextBox ID="txt_id" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="D.O.B"></asp:Label></td>
            <td>
                <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox></td>
           
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="CHECK" OnClick="Button1_Click" />

            </td>
            <td>
                <asp:Label ID="lbl_star" runat="server" Text="*" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
    <!--ALWAYS WRITE HERE .-->
     <!--JQUERYsCRIPT .-->
    <script type="text/javascript" language="javascript">

        $(function () {
            $("#<%=txt_dob.ClientID%>").datepicker({

                changeMonth: true,
                changeYear: true,
                dateFormat: "dd-mm-yy",
                yearRange: '1950:2018',
                showOn: "both"
        });
         
        });
   </script>
</asp:Content>

