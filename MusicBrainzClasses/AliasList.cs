// JSON C# Class Generator
// http://at-my-window.blogspot.com/?page=json-class-generator

using System;
using Newtonsoft.Json.Linq;
using JsonCSharpClassGenerator;

namespace MusicBrainzClasses.JsonTypes
{

    public class AliasList
    {

        private JObject __jobject;
        public AliasList(JObject obj)
        {
            this.__jobject = obj;
        }

        [System.Diagnostics.DebuggerBrowsable(System.Diagnostics.DebuggerBrowsableState.Never)]
        private string[] _alias;
        public string[] Alias
        {
            get
            {
                if(_alias == null)
                    _alias = (string[])JsonClassHelper.ReadArray<string>(JsonClassHelper.GetJToken<JArray>(__jobject, "alias"), JsonClassHelper.ReadString, typeof(string[]));
                return _alias;
            }
        }

    }
}
