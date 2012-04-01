using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CD_BLL.MusicBrainz;
using CD_Global.Extensions;
public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MusicBrainzBL bl = new MusicBrainzBL();
       
        long artistID = bl.GetArtist("thom yorke").First().id;

     // List<CD_DAL.Model.artist> lstAssociatedArtists = bl.GetArtistAssociatedArtists(artistID);
      List<CD_DAL.Model.release> lstArtistsReleases =  bl.GetArtistReleases(artistID);

        foreach (var item in lstArtistsReleases.DistinctBy(a=>a.release_name))
	        {
                List<CD_DAL.Model.track> lstTracks = bl.GetReleaseTracks(item.id);

                string releaseName = item.release_name.name;
                foreach (var track in lstTracks)
                {
                    string trackName = track.track_name.name;
                }
                

	        }

    }
}