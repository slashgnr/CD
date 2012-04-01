using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CD_DAL;
using CD_DAL.Model;

namespace CD_DAL.Users
{
    public class UsersDAL : BaseDAL
    {
        public int AddNewUser(CD_Users user)
        {
            var db = GetDB();

            using (db)
            {
                db.AddToCD_Users(user);
                int affectedRows = db.SaveChanges();
                return affectedRows;
               
            }
        }

        public CD_Users GetUser(string username)
        {
            var db = GetDB();
            CD_Users user = null;
            using (db)
            {
                var query = from u in db.CD_Users
                            where u.Username == username
                            select u;

                if (query.Count() == 1)
                {
                    user = query.First();
                }

                return user;
            }
        }


  
    }
}
