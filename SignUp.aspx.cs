using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication12
{
    public partial class SignUp : System.Web.UI.Page
    {

        public String st = " ";
        public String msg1 = " ";
        public String sqlMsg = " ";

        protected void Page_Load(object sender, EventArgs e)
        {



            if (Request.Form["submit"] != null)
            {
                String Email = Request.Form["Email"];
                String Fname = Request.Form["Fname"];
                String Lname = Request.Form["Lname"];
                String Bday = Request.Form["Bday"];
                String Color = Request.Form["fcolor"];
                String Gender = Request.Form["Gender"];
                String KFood = Request.Form["scategory"];
                String Pet = Request.Form["Pet"];
                String Kosher = Request.Form["Kosher"];
                String Children = Request.Form["Children"];
                String Pw = Request.Form["password"];
                String CPw = Request.Form["cpassword"];
                String Remember = Request.Form["Remember"];





                st += "<tr><td >Email </td> <td>" + Email + "</td></tr>";
                st += "<tr><td >First Name </td> <td>" + Fname + "</td></tr>";
                st += "<tr><td >Last Name </td> <td> " + Lname + " </td></tr>";
                st += "<tr><td > Birth Day </td> <td>" + Bday + " </td></tr>";
                st += "<tr><td >Favorite Color </td> <td>" + Color + " </td></tr>";
                st += "<tr><td >Gender </td> <td>" + Gender + " </td></tr>";
                st += "<tr><td >Favotite kind of food </td> <td>" + KFood + " </td></tr>";
                st += "<tr><td >Pet </td> <td>" + Pet + " </td></tr>";
                st += "<tr><td >Kosher </td> <td>" + Kosher + " </td></tr>";
                st += "<tr><td >Children </td> <td>" + Children + " </td></tr>";
                st += "<tr><td >Password </td> <td>" + Pw + " </td></tr>";
                st += "<tr><td >Check password </td> <td> " + CPw + "</td></tr>";
                st += "<tr><td >Remember me </td> <td>" + Remember + " </td></tr>";


                string fileName = "SignUpDB2.mdf";
                string tableNAme = "SignUpTbl2";
                string sqlSelect = " SELECT * FROM " + tableNAme + " WHERE Email = '" + Email + "'";
                if (Helper.IsExist(fileName, sqlSelect))
                {
                    msg1 = "user name has been taken";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = "INSERT INTO " + tableNAme;
                    sqlInsert += " VALUES ('" + Email + "','";
                    sqlInsert += Fname + "','";
                    sqlInsert += Lname + "','";
                    sqlInsert += Bday + "','";
                    sqlInsert += Color + "','";
                    sqlInsert += Gender + "','";
                    sqlInsert += KFood + "','";
                    sqlInsert += Pet + "','";
                    sqlInsert += Kosher + "','";
                    sqlInsert += Children + "','";
                    sqlInsert += Pw + "','";
                    sqlInsert += CPw + "','";
                    sqlInsert += Remember + ",')";

                    sqlMsg = sqlInsert;
                    Helper.DoQuery(fileName, sqlInsert);
                    msg1 = " ok";

                }
            }
        

        }
    }
}