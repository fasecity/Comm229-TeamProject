<%@ Page Title="Rent" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Rent.aspx.cs" Inherits="Comp229_TeamProject.Rent" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--Created rent page with authorization mohamoud & amandeep--%>
    <h1>Rent and Rate Game!!!!</h1>
    <p>Easily type if you want to rent and rate your game in and press the rent this button</p>
    
    <%-- <table class="table">--%>
   <%--<%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" EditRowStyle-BorderStyle="Groove" EditRowStyle-CssClass="table" 
         BorderStyle="None" CellSpacing="3" GridLines="Horizontal">
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
                  <%--   <asp:Button ID="SubmitButton" class="btn" runat="server" Text="Rent This" />--%>
               <%--  </ItemTemplate>
            </asp:TemplateField>
           
    </Columns>
 
        --%>
  <%--  </asp:GridView>--%>
 
    <table class="table">
    <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="GamesID" DataSourceID="SqlDataSource1" BorderStyle="None" CssClass="table" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="GamesID" HeaderText="GamesID" InsertVisible="False" ReadOnly="True" SortExpression="GamesID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Review_score" HeaderText="Review_score" SortExpression="Review_score" />
            <asp:BoundField DataField="Completed_status" HeaderText="Completed_status" SortExpression="Completed_status" />
       <asp:CommandField ShowEditButton="true" EditText="Rent This" />
             </Columns>
    </asp:GridView>


    

     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team_ProjectConnectionString %>" 
        SelectCommand="SELECT * FROM [Games]" UpdateCommand="update [Games] set Completed_status=@Completed_status  WHERE GamesID=@GamesID">
        <UpdateParameters>
            <asp:Parameter Name="Completed_status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


          </table>


</asp:Content>
