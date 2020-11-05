<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Login2.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    	body{
            font-family: "Poppins", sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            perspective: 1000px;
        }

    	.welcomeLabel {
            font-size:18px;
    	    text-align:center;
        }


        .vertical-center {
            height: auto;
            align-items: center;
            justify-content: center;
        }

    	.img {
            width: 300px;
            height: auto;
            border-radius:20%;
         }


         .butnLogout {
            text-align:center;
            height: auto;
            align-items: center;
            justify-content: center;
         }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="vertical-center">
                <div class="welcomeLabel">
                    <asp:Label ID="lblUserDetails" runat="server" Text="Label"></asp:Label>
                </div>
                <br />
                <img class="img" src="img.jpg" alt="Immagine">
                <br />
                <br />
                <div class="butnLogout">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
