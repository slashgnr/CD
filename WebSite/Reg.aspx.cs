using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CD_DAL.Users;
using CD_Global.Enums;
using CD_BLL.Users;

 
public partial class _Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

     //   AddUser();

     //   ValidateUser();
       // MusicBrainzDAL mbDAL = new MusicBrainzDAL();
       // mbDAL.test();

      //  TableGenerator c1 = new TableGenerator();
      //  c1.test();
      //  AddUser();

          
        


    }

    private void ValidateUser()
    {
        UsersBL usersBL = new UsersBL();
        usersBL.ValidateUser("username", "password1");
    }



    private void AddUser()
    {
        UsersBL usersBL = new UsersBL();


        string username = "username";
        string firstname = "firstname";
        string lastname = "lastname";
        string email = "email";
        string password = "password";
        DateTime birthdate = Convert.ToDateTime("01/01/1980");
        EGender eGender = EGender.Female;

        usersBL.AddUser(this.Request, firstname, lastname, email, username, password, birthdate, eGender);


    }
}