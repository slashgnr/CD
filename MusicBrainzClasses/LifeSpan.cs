// JSON C# Class Generator
// http://at-my-window.blogspot.com/?page=json-class-generator

using System;
using Newtonsoft.Json.Linq;
using JsonCSharpClassGenerator;

namespace MusicBrainzClasses.JsonTypes
{

    public class LifeSpan
    {

        private JObject __jobject;
        public LifeSpan(JObject obj)
        {
            this.__jobject = obj;
        }

        public string Begin
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "begin"));
            }
        }

        public string End
        {
            get
            {
                return JsonClassHelper.ReadString(JsonClassHelper.GetJToken<JValue>(__jobject, "end"));
            }
        }

    }
}
