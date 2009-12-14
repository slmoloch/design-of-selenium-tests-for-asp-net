﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SampleApplication.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Home</title>

    <script src="js/Frameworks/jquery-1.3.1.js" type="text/javascript"></script>
    <script src="js/Frameworks/service-proxy.js" type="text/javascript"></script>
    <script src="js/Frameworks/JsInject.js" type="text/javascript"></script>
    <script src="js/Frameworks/json2.js" type="text/javascript"></script>

    <script src="js/Ignitions/HomeIgnition.js" type="text/javascript"></script>
    <script src="js/Mediators/HomeMediator.js" type="text/javascript"></script>
    <script src="js/Services/Services.js" type="text/javascript"></script>

    <script src="js/Widgets/UserNameWidget.js" type="text/javascript"></script>
    <script src="js/Widgets/UserListWidget.js" type="text/javascript"></script>
    <script src="js/Widgets/AddUserWidget.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        $(function()
        {
            new HomeIgnition().CreateAndRun();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:HiddenField ID="hdnBaseUrl" runat="server" />
    <div>
        You are logged in as: <span ID="lblUserName"></span>
        
        <asp:Button  ID="btnLogout" runat="server" Text="Logout" onclick="btnLogout_Click" /> 
        
        <textarea id="templateUsers" style="display:none">
            {#template MAIN}
             <div id="header">{$T.name}</div>
             <table>
             {#foreach $T.Users as u}
              <tr>
              <td>{$T.u.Name}</td>
              <td>{$T.u.Password}</td>
             </tr>
             {#/for}
             </table>
            {#/template MAIN}
        </textarea>
        
        <br />
        <br />
        <table>
            <tr>
                <td colspan="2">Add user:</td>
            </tr>
            <tr>
                <td>Name</td>
                <td><input type="text" id="txtName" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" id="txtPassword" /></td>
            </tr>
            <tr>
                <td colspan="2"> <input type="button" id="btnAddUser" Value="Add" /></td>
            </tr>
        </table>
        
       <div id="holderUsers"></div>
    </div>
    </form>
</body>
</html>
