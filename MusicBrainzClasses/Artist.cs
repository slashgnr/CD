// JSON C# Class Generator
// http://at-my-window.blogspot.com/?page=json-class-generator

using System;
using Newtonsoft.Json.Linq;
using JsonCSharpClassGenerator;

namespace MusicBrainzClasses.JsonTypes
{

    public class Artist
    {

        private JObject __jobject;
        public Artist(JObject obj)
        {
            this.__jobject = obj;
        }

        public string Score
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "score"));
            }
        }

        public string Type
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "type"));
            }
        }

        public string Id
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "id"));
            }
        }

        public string Name
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "name"));
            }
        }

        public string SortName
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "sort-name"));
            }
        }

        public string Gender
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "gender"));
            }
        }

        public string Country
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "country"));
            }
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private LifeSpan _lifeSpan;
        public LifeSpan LifeSpan
        {
            get
            {
                if(_lifeSpan == null)
                    _lifeSpan = JsonClassHelper.ReadStronglyTypedObject<LifeSpan>(JsonClassHelper.GetJToken<JObject>(__jobject, "life-span"));
                return _lifeSpan;
            }
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private AliasList _aliasList;
        public AliasList AliasList
        {
            get
            {
                if(_aliasList == null)
                    _aliasList = JsonClassHelper.ReadStronglyTypedObject<AliasList>(JsonClassHelper.GetJToken<JObject>(__jobject, "alias-list"));
                return _aliasList;
            }
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private TagList _tagList;
        public TagList TagList
        {
            get
            {
                if(_tagList == null)
                    _tagList = JsonClassHelper.ReadStronglyTypedObject<TagList>(JsonClassHelper.GetJToken<JObject>(__jobject, "tag-list"));
                return _tagList;
            }
        }

        public string Disambiguation
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "disambiguation"));
            }
        }

    }
}
