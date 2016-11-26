<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Comp229_TeamProject.Admin" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
                     <asp:Button ID="SubmitButton" class="btn" runat="server" Text="update" />
                 </ItemTemplate>
            </asp:TemplateField>

             
            <asp:TemplateField>
                 <ItemTemplate>
                     <asp:Button ID="DeleteButton" class="btn" runat="server" Text="Delete" />
                 </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                 <ItemTemplate>
                     <asp:Button ID="AddButton" class="btn" runat="server" Text="Add" />
                 </ItemTemplate>
            </asp:TemplateField>
    </Columns>
 
    
    </asp:GridView>


















</asp:Content>

