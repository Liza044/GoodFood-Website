<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="WebApplication12.Game" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        
        *{

            padding: 0;
            margin:0;
            box-sizing: border-box;
        }
      
        body{

            background-color:#cdb3a3;
            display:flex;
            align-items:flex-start;
        }
        
        .memory-game{

            width: 800px;
            height: 800px;
            margin: auto;
            margin-top: 5%;
            display:flex;
            flex-wrap:wrap;
            perspective:1000px;

        }

         .memory-card{

            width:23%;
            height:23%;
            margin:4px;
            position:relative;
            transform:scale(1);
            transform-style:preserve-3d;
            transition:transform .5s;
        }

         .memory-card:active{

             transform: scale(0.97);
             transition: transform .2s;
         }

         .memory-card.flip{
              transform:rotateY(180deg);
          }

          .front-face,.back-face{

            width:100%;
            height:100%;
            padding:16px;
            position:absolute;
            border-radius:8px;
            background-color:#f9edd74a;
            backface-visibility:hidden;
        }

          .front-face{
              transform:rotateY(180deg);
          }
          
          .bn{

            margin-right: 300px;
            font-size: 44px;
            font-weight: bold;
            background-color: #80614ceb;
            border: #f3eae3 solid 4px;
            border-radius: 16px;
            color: #f3eae3;
            margin-top: 30%;
            padding: 16px;
            visibility:hidden;
          }
          

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >


    <section class="memory-game" >


        <div class="memory-card" data-frameWork="burger" >
            <img class="front-face" src="pictures/buger.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="burger">
            <img class="front-face" src="pictures/buger.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

        

          <div class="memory-card" data-frameWork="cake">
            <img class="front-face" src="pictures/cake.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="cake">
            <img class="front-face" src="pictures/cake.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>



          <div class="memory-card" data-frameWork="cocktail">
            <img class="front-face" src="pictures/cocktail.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="cocktail">
            <img class="front-face" src="pictures/cocktail.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>



          <div class="memory-card" data-frameWork="ice-cream">
            <img class="front-face" src="pictures/ice-cream.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="ice-cream">
            <img class="front-face" src="pictures/ice-cream.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>



          <div class="memory-card" data-frameWork="meat">
            <img class="front-face" src="pictures/meat.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="meat">
            <img class="front-face" src="pictures/meat.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>



          <div class="memory-card" data-frameWork="pizza">
            <img class="front-face" src="pictures/pizza.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="pizza">
            <img class="front-face" src="pictures/pizza.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>



          <div class="memory-card" data-frameWork="salad">
            <img class="front-face" src="pictures/salad.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="salad">
            <img class="front-face" src="pictures/salad.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>



          <div class="memory-card" data-frameWork="sushi">
            <img class="front-face" src="pictures/sushi.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

          <div class="memory-card" data-frameWork="sushi">
            <img class="front-face" src="pictures/sushi.jpg" alt="ff" />
            <img class="back-face" src="pictures/back1.jpg" alt="bf" />
        </div>

        
    </section>
    
    <button id="play" class="bn" type="button" onclick="refresh()">play again</button>

    <script src="scripts.js"></script>
    
</asp:Content>
