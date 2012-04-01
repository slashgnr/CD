// JSON C# Class Generator
// http://at-my-window.blogspot.com/?page=json-class-generator

using System;
using Newtonsoft.Json.Linq;
using JsonCSharpClassGenerator;

namespace MusicBrainzClasses.JsonTypes
{

    public class TagList
    {

        private JObject __jobject;
        public TagList(JObject obj)
        {
            this.__jobject = obj;
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private Tag[] _tag;
        public Tag[] Tag
        {
            get
            {
                if(_tag == null)
                    _tag = (Tag[])JsonClassHelper.ReadArray<Tag>(JsonClassHelper.GetJToken<JArray>(__jobject, "tag"), JsonClassHelper.ReadStronglyTypedObject<Tag>, typeof(Tag[]));
                return _tag;
            }
        }

    }
}
