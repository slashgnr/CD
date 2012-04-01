using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CD_DAL.Model;
using CD_DAL.MusicBrainz;

namespace CD_BLL.MusicBrainz
{
    public class MusicBrainzBL
    {
        MusicBrainzDAL dal = new MusicBrainzDAL();
        public MusicBrainzBL()
        {

        }
        public  List<artist> GetArtist(string artistNameToSearch)
        {
           // MusicBrainzDAL dal = new MusicBrainzDAL();

            return dal.GetArtist(artistNameToSearch); 
        }
        public List<release> GetArtistReleases(long artistID)
        {
         //   MusicBrainzDAL dal = new MusicBrainzDAL();
            return dal.GetArtistReleases(artistID);
        }
        public  List<CD_DAL.Model.artist> GetArtistAssociatedArtists(long artistID)
        {
           // MusicBrainzDAL dal = new MusicBrainzDAL();

            return dal.GetArtistAssociatedArtists(artistID);
        }


        public List<track> GetReleaseTracks(long releaseID)
        {
            return dal.GetReleaseTracks(releaseID).OrderBy(a=>a.position).ToList();
        }
    }
}
