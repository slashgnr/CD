using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CD_BLL.Users;
using CD_Global.Enums;

public partial class Regist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        UsersBL usersBL = new UsersBL();
        lblError.Text = string.Empty;
        if (!usersBL.IsUserExists(tbxUsername.Text))
        {
            string sUsername = tbxUsername.Text;
            string sFirstname = tbxFirstname.Text;
            string sLastname = tbxLastname.Text;
            string sEmail = tbxEmail.Text;
            string sPassword = password1.Text;
            DateTime dBirthdate = Convert.ToDateTime("03/07/1974");
            EGender eGender = EGender.Female;

            usersBL.AddUser(this.Request, sFirstname, sLastname, sEmail, sUsername, sPassword, dBirthdate, eGender);
        }
        else
        {
            lblError.Text = "שם משתמש זה אינו זמין.";
        }
    }
}