<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="_Reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/Turnjs.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="Scripts/turn.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $('#magazine').turn();
        }); 
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id='magazine'>
        <div class="turn-page">
            Page 1
            <div>
         asdasdasasdasdasdasasd
asdasdasasdasdasdasasdasdasdasasdasdasdasasd

asdasdasasdasdasdasasd
asdasdasasdasdasdasasd
asdasdasasdasdasdasasd

asdasdasasdasdasdasasd
asdasdasasdasdasdasasd
asdasdasasdasdasdasasd
asdasdasasdasdasdasasd
asdasdasasdasdasdasasd

asdasdasasdasdasdasasd
asdasdasasdasdasdasasd
asdasdasasdasdasdasasd
asdasdasasdasdasdasasdasdasdasasdasdasdasasd
asdasdasasdasdasdasasd
         asdasdasasdasdasdasasd
                            </div>

        </div>
        <div class="turn-page">
            Page 2
        </div>
        <div class="turn-page">
            Page 3

        </div>
        <div class="turn-page">
            Page 4
        </div>
        <div class="turn-page">
            Page 5
        </div>
    </div>
    </form>
</body>
</html>
