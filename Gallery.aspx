<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="WebApplication12.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        body {
            background-image: url(https://snapstills.com/wp-content/uploads/2021/01/2Y9A3142.jpg)
        }

        div.gallery {
            margin: 24px;
            border: 4px solid bisque;
            margin-left: auto;
            margin-right: auto;
            width: 300px;
            background-color: bisque;
            font: Impact;
            text-align: center;
            font-size: 24pt;
            font-weight: bold;
            background-color: antiquewhite;
        }

           .gallery:hover {
                border: 1px solid #777;
            }

            .gallery img {
                width: 100%;
                height: 100%;
            }

           
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br /><br /><br /><br />
        <div class="gallery">

            <img src="https://www.oogio.net/wp-content/uploads/2021/03/%D7%98%D7%A8%D7%99%D7%A4%D7%9C-%D7%A9%D7%95%D7%A7%D7%95%D7%9C%D7%93-360x240.jpg">

            <div>Dessert</div>
        </div>

        <div class="gallery">
        <img src="https://www.headchef.co.il/wp-content/uploads/2018/01/%D7%AA%D7%A4%D7%A8%D7%99%D7%98-%D7%91%D7%A9%D7%A8%D7%99-%D7%9B%D7%A9%D7%A8-%D7%9C%D7%90%D7%99%D7%A8%D7%95%D7%A2-%D7%A4%D7%A8%D7%98%D7%99-%D7%A7%D7%98%D7%9F-%D7%91%D7%91%D7%99%D7%AA-%D7%A7%D7%99%D7%99%D7%98%D7%A8%D7%99%D7%A0%D7%92-%D7%94%D7%93-%D7%A9%D7%A3.jpg" />
        <div>Meaty</div>
        </div>

        <div class="gallery">

        <img src="https://s1.kikar.co.il/th/data/auto/nadm/tk/rbfulxlh__w650h431q95.jpg"/>
            <div >Milky</div>
        </div>
    
</asp:Content>
