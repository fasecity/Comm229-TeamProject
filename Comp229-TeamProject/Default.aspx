<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Amandeep deol 
        Mohmaoud--%>
    
    <style>
        .headlo{
            color:white;
            font-size:30px;
            font-weight:bold;

        }
        .lead{
            color:white;
            font-size:20px;
        }
    </style>
    <div class="jumbotron">
        <span class="headlo">Macho Games: There For You!</span>
        <p class="lead">Rent, Rate & Game at Macho games</p>
        <br />
          <br />
          <br />
          <br />
          <br />
        <%-- we make spaces --%>
        
        <p><a href="Account/Register.aspx" class="btn btn-primary btn-lg">Register</a></p>
    </div>

   

</asp:Content>
