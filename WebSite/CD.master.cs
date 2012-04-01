using System;
using System.Collections.Generic;
 
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CD_BLL.Users;
public partial class CD : System.Web.UI.MasterPage
{
    const string USERID = "userid";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        LblLoginError.Text = string.Empty;
        UsersBL usersBL = new UsersBL();
        long lUserId =usersBL.GetUserid(loginUsername.Text, loginPassword.Text);
         if (lUserId > 0)
         {
             Session.Add(USERID, lUserId);
             LblLoginError.Text = "פרטים נכונים! " + Session[USERID].ToString();
         }
         else
         {
             Session.Remove(USERID);
             LblLoginError.Text = "פרטים שגויים";
         }
         
    }
}
