using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication12
{
    public partial class ShowDB_aspx : System.Web.UI.Page
    {
        
        public String st = "";
        public String msg = "";
        public String sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            string fileName = "SignUpDB2.mdf";
            string tableNAme = "SignUpTbl2";
            sqlSelect = "Select * From " + tableNAme;

             
            DataTable table = Helper.ExecuteDataTable( fileName,  sqlSelect);

            int len = table.Rows.Count;
            if (len == 0)
                msg = " No users ";
            else
            {

                st += "<tr>";
                st += "<th class = 'tblTH'>Email </th>";
                st += "<th class = 'tblTH'>First Name </th>";
                st += "<th class = 'tblTH' >Last Name </th>";
                st += "<th class = 'tblTH' > Birth Day </th>";
                st += "<th class = 'tblTH' >Favorite Color </th>";
                st += "<th class = 'tblTH' >Gender </th>";
                st += "<th class = 'tblTH' >Favotite kind of food </th>";
                st += "<th class = 'tblTH' >Pet </th>";
                st += "<th class = 'tblTH' >Kosher </th>";
                st += "<th class = 'tblTH' >Children </th>";
                st += "<th class = 'tblTH' >Password </th>";
                st += "<th class = 'tblTH' >Check password </th>";
                st += "<th class = 'tblTH' >Remember me </th>";
                st += "</tr>";


                for(int i=0; i < len; i++)
                {
                    if (!table.Rows[i]["KFood"].Equals(null))
                    {
                        st += "<tr>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Email"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Fname"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Lname"] + "</td>";            
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Bday"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Color"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Gender"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["KFood"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Pet"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Kosher"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Children"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Pw"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["CPw"] + "</td>";
                        st += "<td class = 'tblTD'>" + table.Rows[i]["Remember"] + "</td>";
                        st += "<tr>";
                    }

                    Console.WriteLine("hi " + table.Rows[i]["KFood"]);

                }

                msg = len + " users ";

            }

            

        }
        
    }
    
}