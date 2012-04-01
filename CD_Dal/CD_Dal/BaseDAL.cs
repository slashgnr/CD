using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CD_DAL.Model;

namespace CD_DAL
{
    public class BaseDAL
    {
        public static string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["CD_DataModelLocal"].ToString();// AM.Dal.Properties.Settings.Default.Tomer_AgentsManager;

        public static CD_DataEntities GetDB()
        {
            CD_DataEntities db = new CD_DataEntities(connectionString);
            //db.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
            return db;

        }

    }
}
