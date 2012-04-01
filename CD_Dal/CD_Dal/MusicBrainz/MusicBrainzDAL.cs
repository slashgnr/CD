using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CD_DAL.MusicBrainz;
using CD_DAL.Model;
using CD_Global.Extensions;

namespace CD_DAL.MusicBrainz
{
    public class MusicBrainzDAL : MusicBrainzBaseDAL
    {

        public List<artist> GetArtist(string artistNameToSearch)
        {


            var db = GetDB();



            using (db)
            {
                List<artist> lstResults = new List<artist>();


                var queryArtistName = (from a in db.artist_name
                                       where a.name.Contains(artistNameToSearch)
                                       select a).ToList();


                if (queryArtistName.Any())
                {
                    foreach (var item in queryArtistName)
                    {
                        //Get Artist Name
                        // artist_name artistName = item;

                        var queryArtist = (from a in db.artists
                                           where a.name == item.id
                                           select a);

                        if (queryArtist.Any())
                        {
                            lstResults.Add(queryArtist.First());
                        }

                    }

                }
                return lstResults;
            }
          

        }

        public List<release> GetArtistReleases(long artistID)
        {
            var db = GetDB();


        //    using (db)
        //    {
                List<release> lstResults = new List<release>();

                var queryArtistReleases = from ar in db.l_artist_release
                                          where ar.entity0 == artistID
                                          select ar;

                if (queryArtistReleases.Any())
                {
                    foreach (var item in queryArtistReleases.DistinctBy(a => a.entity1))
                    {
                        release relase = (from r in db.releases
                                          where r.id == item.entity1
                                          select r).First();

                        lstResults.Add(relase);

                    }
                }
                return lstResults;
          //  }
        }

        public  List<artist> GetArtistAssociatedArtists(long artistID)
        {
            var db = GetDB();


          //  using (db)
         //  {
                List<artist> lstResults = new List<artist>();

                var queryArtistAssociated = from ar in db.l_artist_artist
                                            where ar.entity0 == artistID
                                            select ar;

                if (queryArtistAssociated.Any())
                {
                    //
                    //Get Associtated Artists to Artist
                    foreach (var item in queryArtistAssociated)
                    {
                        long associatedArtistID = item.entity1;
                        artist associatedArtist = (from a in db.artists
                                                   where a.id == associatedArtistID
                                                   select a).First();


                        lstResults.Add(associatedArtist);

                    }
               }
                return lstResults;

         //   }

        }



        public List<track> GetReleaseTracks(long releaseID)
        {
            var db = GetDB();

            List<track> lstResults = new List<track>();

            var queryMedium= from m in db.media
                               where m.release == releaseID
                                 select m;

            if (queryMedium.Any())
            {
                foreach (var medium in queryMedium)
                {
                    long trackListID = medium.tracklist;

                    var queryTracks = from t in db.tracks
                                      where t.tracklist == trackListID
                                      select t;

                    foreach (var track in queryTracks)
                    {
                        lstResults.Add(track);
                    }
                    
                }
            }

            return lstResults;
        }
      
    }
}
