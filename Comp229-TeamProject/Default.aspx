<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_TeamProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%-- Amandeep deol studentid-300912354
        Mohmaoud studentid-3009435435--%>
    
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
        .datafront{
            color:white;
        }
        .table{
            color:azure;
            font-size:14px;
        }
      .jumbotron{
           background-image:url("assets/pexels-photo-194511.jpeg");
            background-position: 0% 25%;
            background-size: cover;
            background-repeat: no-repeat;
            opacity:.90;
            text-align:center;
            font-family: 'Press Start 2P', cursive;
           
      }
    </style>
    <div class="imageb">
    <div class="jumbotron">
    <%--    <img src="assets/pexels-photo-194511.jpeg" />--%>
       
        <span class="headlo">Macho Games: There For You!</span>
        <p class="lead">Rent, Rate & Game at Macho games</p>
        <br />
        
        <%-- we make spaces --%>
        
        <p><a href="Account/Register.aspx" class="btn btn-primary btn-lg">Register</a></p>
         <p><a href="RentPage/Rent.aspx" class="btn btn-primary btn-lg">Rent</a></p>
       
    </div>
   </div>
    <%--<div class="datafront">
        <div class="table1">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GamesID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="GamesID" HeaderText="GamesID" InsertVisible="False" ReadOnly="True" SortExpression="GamesID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Review_score" HeaderText="Review_score" SortExpression="Review_score" />
            <asp:BoundField DataField="Completed_status" HeaderText="Completed_status" SortExpression="Completed_status" />
        </Columns>
</asp:GridView>


        </div>
    </div>--%>
    
  <table class="table">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" EditRowStyle-BorderStyle="Groove" EditRowStyle-CssClass="table" BorderStyle="None" CellSpacing="3" GridLines="Horizontal">
    <Columns>
        <asp:TemplateField HeaderText="Game Id ">
            <ItemTemplate>
                <asp:Label ID="GamesIDLabel1" runat="server" Text='<%#Eval ("GamesID") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Title" ControlStyle-BorderStyle="None">
            <ItemTemplate>
                <asp:Label ID="TitleLabel1" runat="server" Text='<%#Eval ("Title") %>' BorderStyle="None"></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Genre">
            <ItemTemplate>
                <asp:Label ID="GenreLabel1" runat="server" Text='<%#Eval ("Genre") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

         <Columns>
        <asp:TemplateField HeaderText="Price ($)">
            <ItemTemplate>
                <asp:Label ID="PriceLabel1" runat="server" Text='<%#Eval ("Price") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

         <Columns>
        <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label ID="DescriptionLabel1" runat="server" Text='<%#Eval ("Description") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Review Score">
            <ItemTemplate>
                <asp:Label ID="Review_scoreLabel1" runat="server" Text='<%#Eval ("Review_score") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
    </Columns>

        <Columns>
        <asp:TemplateField HeaderText="Completed Status">
            <ItemTemplate>
                <asp:Label ID="Completed_statusLabel1" runat="server" Text='<%#Eval ("Completed_status") %>'></asp:Label>
                 </ItemTemplate>
        </asp:TemplateField>
            <asp:TemplateField>
                 <ItemTemplate>
                     <%--<asp:Button ID="SubmitButton" class="btn" runat="server" Text="update" />--%>
                 </ItemTemplate>
            </asp:TemplateField>
    </Columns>
 
    
    </asp:GridView>
  </table>
   
      
    


   

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Games]"></asp:SqlDataSource>




   

</asp:Content>
