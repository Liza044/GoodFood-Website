<%@ Page Title = "" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShowDB.aspx.cs" Inherits="WebApplication12.ShowDB_aspx" %>

<asp:Content ID = "Content1" ContentPlaceHolderID="head" runat="server">

<style>

body{
 background-image: url(https://image.freepik.com/free-photo/soft-pale-blue-and-white-patchy-ceramic-background_190474-58.jpg);

}



table,th,td{
margin-left: auto;
margin-right: auto;
border: 1px solid black;
padding:10px;
font-weight: bold;
border-radius: 2.4px
}



.tblTH{
font-size:28px;
font-weight: bold;
background-color: #3a88af;

}

.tblTD{
font-size:20px;
font-weight: bold;
background-color: #aeddf4;

}

h1{
font-weight: bold;
font-size:40px;
}

h10{

            text-shadow: 0 8px #e2f5fb;
            text-align: center;
            font-size: 104px;
            background-color: #b6e3f6;
            font-style: oblique;
            color: #3882a5;
            border: #3a88af dotted 4px;
            border-radius: 16px;
            margin-left: 30%;

}

</style>
</asp:Content >


<asp:Content ID = "Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h10> Table Users </h10>
<h1><%= sqlSelect %></h1>
<h1 style="font-size:31px;"><%= msg %></h1>

<table >
    <%= st %>
</table>



</asp:Content>
