<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication12.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
        <style>

        body { 
            background-image: url('https://i.pinimg.com/474x/46/6f/c9/466fc9b89af63bede9d6415442cd7eef.jpg');
        }
  
        h2 {
            color: #2c2c2a;
            text-align-last: center;
            font-size: 80pt;
            background-color: #fafafac2;
            font-style: oblique;
            line-height: 1.5;
            text-decoration: line-through;
            border: #1ea570 double 7mm;
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: 40px;
            text-shadow: 0 4px #1ea570;
            margin-top: 40px;
   
        }

        h3 {
            text-align: center;
            background-color: #363636ed;
            font-size: 24pt;
            color: #4ae58c;
            border: #1ea570 dotted 2px;
            width: 30%;
            text-decoration:none;
            text-decoration:underline;
            margin-left: auto;
            margin-right: auto;
            margin-top: -15px;
            padding: 5px;
            border-radius: 15px;

        }


    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>GOOD FOOD</h2>

<a href="LogIn.aspx"><h3 > LOG IN </h3></a>
<a href="SignUp.aspx"><h3 > SIGN UP </h3></a>
<a href="Gallery.aspx"><h3> RECIPES </h3></a>
<a href="Game.aspx"><h3 > GAME </h3></a>

    
</asp:Content>