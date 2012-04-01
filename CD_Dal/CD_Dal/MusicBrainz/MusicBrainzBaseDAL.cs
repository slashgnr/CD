using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CD_DAL.Model;

namespace CD_DAL.MusicBrainz
{
    public class MusicBrainzBaseDAL
    {
        public static string connectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MusicBrainzEntities"].ToString();// AM.Dal.Properties.Settings.Default.Tomer_AgentsManager;

        public static MusicBrainzEntities GetDB()
        {
            MusicBrainzEntities db = new MusicBrainzEntities(connectionString);
            return db;

        }
    }
}
