<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/PatientMaster.Master" AutoEventWireup="true" CodeBehind="DoctorProfile.aspx.cs" Inherits="DBProject.DoctorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Doctor's Profile</title>
    <style>
        .content-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .content-container label {
            display: block;
            margin-bottom: 10px;
        }

        .content-container button {
            display: block;
            margin-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="/assets/css/grid-view.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <div style="background-image: url(/assets/img/backgrounds/PatientHome.jpg); background-position: center; background-size: cover; background-repeat: no-repeat; height: 100vh; overflow: auto;">
        <h1 style="text-align: center; padding-top: 20px;"><strong>Doctor's Profile</strong></h1>
        <div class="content-container">
            <h4><strong>Name: </strong></h4>
            <asp:Label ID="DName" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Phone: </strong></h4>
            <asp:Label ID="DPhone" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Qualification:</strong></h4>
            <asp:Label ID="DQualification" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Specialization:</strong></h4>
            <asp:Label ID="DSpecialization" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Work Experience:</strong></h4>
            <asp:Label ID="DWork" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Age: </strong></h4>
            <asp:Label ID="DAge" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Gender:</strong></h4>
            <asp:Label ID="DGender" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Department:</strong></h4>
            <asp:Label ID="DDept" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Charges Per Appointment:</strong></h4>
            <asp:Label ID="DCharges" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Repute Index:</strong></h4>
            <asp:Label ID="DRI" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br /><br />
            <h4><strong>Number of Patients Treated:</strong></h4>
            <asp:Label ID="DPT" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <br />
            <asp:Button ID="AppointmentB" runat="server" Text="Take Appointment" OnClick="RedirectToAppointmentTaker" Font-Bold="true" />
        </div>
    </div>
</asp:Content>