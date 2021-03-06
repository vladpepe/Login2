﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login2.WebForm1" %>

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

    	btnSignin {
    	    align-content: end;
        }

        .vertical-center {
            height: auto;
            border: 3px solid green;
            border-radius:10%;
            align-items: center;
            justify-content: center;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="vertical-center">
            <table style="margin:auto; border:5px solid white; align-content:baseline">
                <tr>
                    <td>
						<asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                    <td>
						<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
						<asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                    <td>
						<asp:TextBox ID="txtPassword" textMode="password" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>
						</td>
                    <td>
						<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                       
                        <asp:Button ID="btnSignin" runat="server" Text="Sign in" OnClick="btnSignin_Click"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
						<asp:Label ID="lblErrorMessage" runat="server" Text="Incorect User Credentials" ForeColor="Red"></asp:Label></td>
                </tr>

            </table>
                <div />
        </div>
    </form>
</body>
</html>
