<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="TakeAppointment.aspx.cs" Inherits="DBProject.TakeAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Departments</title>
    <style>
        .GridView-d {
            border: none;
            width: 100%;
            max-width: 1000px;
            margin: 0 auto;
        }

        .GridView-d th {
            background-color: #6B696B;
            color: white;
            font-weight: bold;
        }

        .GridView-d tr:nth-child(even) {
            background-color: #F7F7DE;
        }

        .GridView-d tr:nth-child(odd) {
            background-color: white;
        }

        .GridView-d td {
            padding: 8px;
            border: 1px solid #DEDFDE;
        }

        .GridView-d tr:hover {
            background-color: #CE5D5A;
            color: white;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="text-align: center; margin-top: 50px;"><strong>Select a Department to view its Doctors</strong></h1>
    <br /><br />
    <asp:Label ID="TDept" runat="server"></asp:Label>
    <br /><br />
    <asp:GridView ID="TDeptGrid" runat="server" CssClass="GridView-d" CellPadding="4" ForeColor="Black" GridLines="Vertical"
        EnableViewState="False"
        AutoGenerateSelectButton="True" 
        OnRowCommand="TDeptGrid_RowCommand" BackColor="White" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:TemplateField HeaderText="No." ItemStyle-Width="50">
                <ItemTemplate>
                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                </ItemTemplate>
                <ItemStyle Width="50px"></ItemStyle>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br /><br />
</asp:Content>