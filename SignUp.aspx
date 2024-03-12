<%@ Page Title="SIGN UP" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication12.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        body {
            background-image: url(https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRFe8HzvToh6iLNC-Sf12VFEDEN7ZV1Lr1UepUwKH896YSamR3v6PW5w0fTsCAUhKYOAw&usqp=CAU)
        }
        table, tr, td {
            border: 1px solid transparent;
            border-collapse: collapse;
            padding: 24px;
            margin-left: auto;
            margin-right: auto;
        }

        table {
            border: #c5b3a7 solid 6px;
            width: 870px;
        }

        td {
            text-align: left;
            font-size: 40px;
            font-weight: bold;
            background-color: #faebd7e3;
        }

        error{

            font-weight:bold;
            color:red;
            font-size:24px;

        }

        .su {
            text-shadow: 0 8px #faebd7;
            text-align: center;
            font-size: 104px;
            background-color: #856344cc;
            font-style: oblique;
            color: #564431;
            border: #ffecc0 dotted 4px;
            border-radius: 16px;
            margin-left: auto;
            width: 870px;
            margin-right: auto;
        
        }

     

        .it {
            background-color: #efdbcb;
            height: 44px;
            width: 300px;
            font-size: 30px;
            border: #6f451840 solid 2px;
            border-radius: 8px;
        }

        mt{
            font-weight:bold;
            font-size:20px;
        }

        .st {
            font-size: 44px;
            font-weight: bold;
            margin: 16px;
            background-color: #80614ceb;
            border: #f3eae3 solid 4px;
            border-radius: 16px;
            color: #f3eae3;
            margin-top: 40px;
            padding: 16px;
            margin-left: 47%;

        }
    </style>
        <script>

            function checkForm() {

                var flage = true;

                //bday
                var bd = document.getElementById("bday").value;

                if (bd == "") {
                    document.getElementById("erbday").innerHTML = "enter a date";
                    flage = false;
                }
                else
                    document.getElementById("erbday").innerHTML = "";

                //fname
                var finame = document.getElementById("fname").value;
                var len1 = finame.length;

                if (finame == "") {
                    document.getElementById("erfname").innerHTML = "empty";
                    flage = false;
                }

                else if (/[^a-zA-Z]/.test(finame)) {
                    document.getElementById("erfname").innerHTML = "must be only letters";
                    flage = false;
                }

                else if (len1 < 2 || len1 > 16) {
                    document.getElementById("erfname").innerHTML = "the len isnt correct";
                    flage = false;
                }
                else
                    document.getElementById("erfname").innerHTML = " ";

                //lname
                var laname = document.getElementById("lname").value;
                var len2 = laname.length;

                if (laname == "") {
                    document.getElementById("erlname").innerHTML = "empty";
                    flage = false;
                }

                else if (/[^a-zA-Z]/.test(laname)) {
                    document.getElementById("erlname").innerHTML = "must be only letters";
                    flage = false;
                }

                else if (len2 < 2 || len2 > 20) {
                    document.getElementById("erlname").innerHTML = "the len isnt correct";
                    flage = false;
                }

                else
                    document.getElementById("erlname").innerHTML = " ";

                //password
                var pw = document.getElementById("password").value;
                var len3 = pw.length;

                if (pw == "") {
                    document.getElementById("erpassword").innerHTML = "empty";
                    flage = false;
                }

                else if (len3 < 6 || len3 > 10) {
                    document.getElementById("erpassword").innerHTML = "the len isnt correct";
                    flage = false;
                }
                else
                    document.getElementById("erpassword").innerHTML = " ";

                //cpassword
                var cps = document.getElementById("cpassword").value;
                var len4 = cps.length;

                if (cps == "") {
                    document.getElementById("ercpassword").innerHTML = "empty";
                    flage = false;
                }

                else if (cps != pw) {
                    document.getElementById("ercpassword").innerHTML = "The passwords don't match";
                    flage = false;
                }

                else
                    document.getElementById("ercpassword").innerHTML = " ";

                //gender
                var x5 = document.getElementById("gender").value;
               
                if (x5 == "Select") {
                    document.getElementById("ergender").innerHTML = "Choose one option";
                    flage = false;
                }

                else
                    document.getElementById("ergender").innerHTML = " ";

                //scategory
                var x2 = document.getElementById("scategory").value;

                if (x2 == "Select") {
                    document.getElementById("erscategory").innerHTML = "Choose one option";
                    flage = false;
                }

                else
                    document.getElementById("erscategory").innerHTML = " ";

                //pet
                var x2 = document.getElementById("pet").value;

                if (x2 == "Select") {
                    document.getElementById("erpet").innerHTML = "Choose one option";
                    flage = false;
                }

                else
                    document.getElementById("erpet").innerHTML = " ";

                //kosher
                var x3 = document.getElementById("kosher").value;

                if (x3 == "Select") {
                    document.getElementById("erkosher").innerHTML = "Choose one option";
                    flage = false;
                }

                else
                    document.getElementById("erkosher").innerHTML = " ";

                //children
                var x4 = document.getElementById("children").value;

                if (x4 == "Select") {
                    document.getElementById("erchildren").innerHTML = "Choose one option";
                    flage = false;
                }

                else
                    document.getElementById("erchildren").innerHTML = " ";

                //email
                var gl = document.getElementById("email").value;
                leng = gl.length;
                var letter = '';
                var sht = 0;
                var end = 0;
                var x10 = 0;
                var wrongletter = " !:,{}[]#$%^&*()+=|\/אבגדהוזחטיכלמנסעפצקרשתץףךם";
                var lenw = wrongletter.length;

                for (var i = 0; i < lenw; i++) {

                    letter = wrongletter.charAt(i);
                    if (gl.indexOf(letter) != -1) {
                        x10 += 1;
                    }
                }

                if (gl.indexOf("@gmail.com") == (leng - 10))
                    end += 1;

                if (gl.indexOf('@') != -1)
                    sht += 1;


                if (gl == "") {
                    document.getElementById("eremail").innerHTML = "empty";
                    flage = false;
                }

                else if (x10 != 0) {
                    document.getElementById("eremail").innerHTML = "must not special symbols";
                    flage = false;
                }

                else if (sht != 1) {
                    document.getElementById("eremail").innerHTML = "must be one @";
                    flage = false;
                }

                else if (end != 1) {
                    document.getElementById("eremail").innerHTML = "must to end in @gmail.com";
                    flage = false;
                }

                else
                    document.getElementById("eremail").innerHTML = " ";


                return flage;

            }

          


        </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 

    <h1 class="su">SIGN UP</h1>
     <form  runat="server" onsubmit="return checkForm();">
    <table> 

        <!-- EMAIL -->
        <tr>
            <td><label for="email" >E-mail:</label> </td>
            <td style="    padding-top: 90px;" ><input class="it" type="text" id="email" name="email"  ><br /> <error id="eremail"> </error> <br> </td>
        </tr>

        <!-- FIRST NAME -->
        <tr>
            <td><label for="fname">First Name:</label> <br /><mt>*must be only 2-16 letters</mt></td>
            <td style="    padding-top: 80px;"><input class="it" type="text" id="fname" name="fname"><br /> <error id="erfname"> </error><br></td>
        </tr>

        <!-- LAST NAME -->
        <tr>
            <td><label for="lname">Last Name:</label><br /><mt>*must be only 2-20 letters</mt></td>
            <td style="    padding-top: 80px;"><input class="it" type="text" id="lname" name="lname"><br /> <error id="erlname"> </error><br></td>
        </tr>

        <!-- BIRTH DAY -->
        <tr>
            <td><label for="bday">Birth-Day:</label> </td>
            <td><input class="it" type="date" id="bday" name="bday" /><br /> <error id="erbday"> </error></td>
        </tr>

        <!-- FAVORITE COLOR -->
        <tr>
            <td><label for="fcolor" >Favorite Color:</label> </td>
            <td style="padding-top: 64px;" ><input class="it" style="width:80px;height:80px;" type="color" id="fcolor" name="fcolor"><br /> <error id="erfcolor"> </error></td>
        </tr>


        <!-- GENDER -->
        <tr>
            <td>
                <label for="gender">Gender:</label>
            </td>

            <td>
                <select class="it" id="gender" name="gender" > 
                    <option value="Select">Select</option>
                    <option value="male">male</option>
                    <option value="female">female</option>
                    <option value="other">other</option>

                </select>
               <br /> <error id="ergender"> </error>
            </td>
        </tr>

        <!-- CATEGORY -->
        <tr>
            <td>
                <label for="scategory">What kind of food do you prefer?</label>
            </td>

            <td>
                <select class="it" id="scategory" name="scategory" > 
                    <option value="Select">Select</option>
                    <option value="meat">meat</option>
                    <option value="milk">milk</option>
                    <option value="dessert">dessert</option>

                </select>
               <br /> <error id="erscategory"> </error>
            </td>
        </tr>

        <!-- PET -->
        <tr>
            <td>
                <label for="pet">Do you have a pet?</label>
            </td>

            <td>
                <select class="it" id="pet" name="pet" > 
                    <option value="Select">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
               <br /> <error id="erpet"> </error>
            </td>
        </tr>

        <!-- KOSHER -->
        <tr>
            <td><label for="kosher">Do you eat kosher?</label></td>
            <td>
                <select class="it" id="kosher" name="kosher" >
                    <option value="Select">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
                <br /><error id="erkosher"> </error>
            </td>
        </tr>

        <!-- CHILDREN -->
        <tr>
            <td><label for="children">Do you have children?</label></td>
            <td>
                <select class="it" id="children" name="children">
                    <option value="Select">Select</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>
                <br /><error id="erchildren"> </error>
            </td>
        </tr>

        <!-- PASSWORD -->
        <tr>
            <td><label for="password">Password:</label> <br /> <mt>*must be 6-10 chars</mt></td>
            <td style="padding-top: 70px;"><input class="it" type="text" id="password" name="password"><br /> <error id="erpassword"> </error><br></td>
        </tr>

        <!-- CHECK PASSWORD -->
        <tr>
            <td><label for="cpassword">Check Password:</label> </td>
            <td style="    padding-top: 57px;"><input class="it" type="text" id="cpassword" name="cpassword" ><br /> <error id="ercpassword"> </error><br></td>
        </tr>

        <!-- REMEMBER -->
        <tr >
            <td style="font-size:30px; padding:0px;padding-left: 24px;">
                <input type="checkbox" id="remember" name="remember" value="remember">
                <label for="remember"> Remember me</label>
            </td>

            <td style="color:transparent;">
                //////////////////////////////
            </td>
        </tr>

    </table>
           <input class="st" type="submit" value="submit"  name="submit"/>
     </form>


    
        <br />
 

    <table border="1" >
        <%=st %>
    </table>
   
    <h1 style="background-color:antiquewhite;"><%=sqlMsg %></h1>
    <h1 style="background-color:antiquewhite;"><%=msg1 %></h1>

    
  



    
</asp:Content>
