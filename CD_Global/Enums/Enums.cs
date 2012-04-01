using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CD_Global.Enums
{
        public enum EGender
        {
            Male =1,
            Female = 2
        }


        public enum EArtistType
        {
            Unknown,
            Group,
            Person
        }

        public enum EReleaseArtistType
        {
            VariousArtists,
            SingleArtist
        }


        public enum EAlbumType
        {
            None,
            Album,
            Single,
            EP,
            Compilation,
            Soundtrack,
            Spokenword,
            Interview,
            Audiobook,
            Live,
            Remix,
            Other
        }

        public enum EAlbumStatus
        {
            None,
            Official,
            Promotion,
            Bootleg,
            PsudoRelease
        }

        public enum EAlbumFormat
        {
            None,
            Cartridge,
            Cassette,
            CD,
            DAT,
            Digital,
            DualDisc,
            DVD,
            LaserDisc,
            MiniDisc,
            Other,
            ReelToReel,
            SACD,
            Vinyl
        }

        public enum ELabelType
        {
            None,
            Distributor,
            Holding,
            OriginalProduction,
            BootlegProduction,
            ReissueProduction
        }
}
