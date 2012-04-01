using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace CD_Global.Utils
{
    public static class Utils
    {
        public static string GetClientIPAddress(HttpRequest request)
        {
            string ip = string.Empty;

            ip = request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (!string.IsNullOrEmpty(ip))
            {
                string[] ipRange = ip.Split(',');
                int le = ipRange.Length - 1;
                string trueIP = ipRange[le];
            }
            else
            {
                ip = request.ServerVariables["REMOTE_ADDR"];
            }

            return ip;
        }

    }
}
