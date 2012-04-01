using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CD_Global.Enums;
using CD_DAL.Model;
using CD_Global.Utils;
using System.Web;
using CD_DAL.Users;
using CD_Global.Extensions;

namespace CD_BLL.Users
{
    public class UsersBL
    {
        public bool AddUser(HttpRequest request, string firstName, string lastname, string email, string username, string password, DateTime? birthdate, EGender eGender)
        {
            CD_Users user = new CD_Users();
            user.FirstName = firstName;
            user.LastName = lastname;
            user.Email = email;
            user.Username = username;
            SaltedHash saltedHash = new SaltedHash();
            string hashedPassword = string.Empty;
            string salt = string.Empty;

            saltedHash.GetHashAndSaltString(password, out hashedPassword, out salt);
            user.Password = hashedPassword;
            user.Salt = salt;
            user.BirthDate = birthdate;
            if (birthdate.HasValue)
            {
                user.BirthDateHeb = birthdate.Value.ToHebrewJewishDateString(true);
            }
            user.EGenderID = (int)eGender;
            user.LastVisitDate = DateTime.Now;
            user.TimeStamp = DateTime.Now;
            user.LastVisitIP = Utils.GetClientIPAddress(request);

            CD_DAL.Users.UsersDAL dal = new CD_DAL.Users.UsersDAL();
           int affectedRows = dal.AddNewUser(user);
           return affectedRows == 1;

        }

        public bool ValidateUser(string username, string password)
        {
            UsersDAL dal = new UsersDAL();
            bool isValid = false;
            CD_Users user = dal.GetUser(username);

            if (user != null)
            {
                SaltedHash saltedHash = new SaltedHash();
                isValid = saltedHash.VerifyHashString(password, user.Password, user.Salt);
            }

            return isValid;
        }

        public long GetUserid(string username, string password)
        {
            UsersDAL dal = new UsersDAL();
            bool isValid = false;
            long lId = 0;
            CD_Users user = dal.GetUser(username);
            
            if (user != null)
            {
                SaltedHash saltedHash = new SaltedHash();
                isValid = saltedHash.VerifyHashString(password, user.Password, user.Salt);
            }
            if (isValid)
            {
                lId = user.ID;
            }

            return lId;
        }
        public bool IsUserExists(string username)
        {
            UsersDAL dal = new UsersDAL();
            bool isExists = false;
            CD_Users user = dal.GetUser(username);

            if (user != null)
            {
                isExists = true;
            }

            return isExists;
        }
    }
}
