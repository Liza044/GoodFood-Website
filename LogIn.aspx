<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebApplication12.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
     
        body {
            background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeNkQ6xJmjbxO_J1V5JIu08N64Ped2IVyL_w&usqp=CAU)
        }
        table, tr, td {
            border: 1px solid transparent;
            border-collapse: collapse;
            padding: 40px;
            margin-left: auto;
            margin-right: auto;
            background-color: #fffacd99;
        }
        table {
            border: #ffcbb6 solid 6px;
            width:870px;
        }

        .li {
            text-shadow: 0 8px #fffbcc;
            text-align: center;
            font-size: 104px;
            background-color: #ffc0a6d1;
            font-style: oblique;
            color: #8d3a3f;
            border: #ffecc0 dotted 4px;
            border-radius: 16px;
            margin-left: auto;
            width: 870px;
            margin-right: auto;
        }
        td {
            text-align: left;
            font-size: 54px;
            font-weight: bold;
        }

        .rf {
            text-align: left;
            font-size: 24px;
            font-weight: bold;
        }
        .st{
            text-align: center;
            font-size: 44px;
            font-weight: bold;
            margin: 16px;
            padding: 16px;
            background-color: #fab092d4;
            border: #e09570 solid 4px;
            border-radius: 16px;
            color:#66262a

        }

        .it {
            background-color: #ffcbb6a8;
            height: 40px;
            width: 300px;
            font-size: 30px;
            border: #eeb6976e solid 2px;
            border-radius: 8px;
            color: #702529;
        }
      

      
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="li">LOG IN</h1>

    <table>
        <tr>
            <td><label for="email" >E-mail:</label> </td>
            <td><input class="it" type="text" id="email" name="email"> </td>

        </tr>

        <tr>
            <td><label for="password" >Password:</label> </td>
            <td><input class="it" type="text" id="password" name="password"></td>
        </tr>

        <tr>
            <td class="rf">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember"> Remember me</label><br/><br/><br/>
         
            </td>

            <td style="color:transparent;">
                //////////////////////////////
            </td>
        </tr>


     
      

    </table>
    
    <center>
        <input style=" cursor: pointer;" class="st" type="submit" value="Submit" />

    </center>
    






</asp:Content>
