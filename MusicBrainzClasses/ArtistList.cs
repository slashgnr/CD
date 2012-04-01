// JSON C# Class Generator
// http://at-my-window.blogspot.com/?page=json-class-generator

using System;
using Newtonsoft.Json.Linq;
using JsonCSharpClassGenerator;

namespace MusicBrainzClasses.JsonTypes
{

    public class ArtistList
    {

        private JObject __jobject;
        public ArtistList(JObject obj)
        {
            this.__jobject = obj;
        }

        public int Offset
        {
            get
            {
                return JsonClassHelper.ReadInteger(JsonClassHelper.GetJToken<JValue>(__jobject, "offset"));
            }
        }

        public int Count
        {
            get
            {
                return JsonClassHelper.ReadInteger(JsonClassHelper.GetJToken<JValue>(__jobject, "count"));
            }
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private Artist[] _artist;
        public Artist[] Artist
        {
            get
            {
                if(_artist == null)
                    _artist = (Artist[])JsonClassHelper.ReadArray<Artist>(JsonClassHelper.GetJToken<JArray>(__jobject, "artist"), JsonClassHelper.ReadStronglyTypedObject<Artist>, typeof(Artist[]));
                return _artist;
            }
        }

    }
}
