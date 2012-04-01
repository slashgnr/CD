// JSON C# Class Generator
// http://at-my-window.blogspot.com/?page=json-class-generator

using System;
using Newtonsoft.Json.Linq;
using JsonCSharpClassGenerator;
using MusicBrainzClasses.JsonTypes;

namespace MusicBrainzClasses
{

    public class SearchResult
    {

        public SearchResult(string json)
         : this(JObject.Parse(json))
        {
        }

        private JObject __jobject;
        public SearchResult(JObject obj)
        {
            this.__jobject = obj;
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private ArtistList _artistList;
        public ArtistList ArtistList
        {
            get
            {
                if(_artistList == null)
                    _artistList = JsonClassHelper.ReadStronglyTypedObject<ArtistList>(JsonClassHelper.GetJToken<JObject>(__jobject, "artist-list"));
                return _artistList;
            }
        }

    }
}
