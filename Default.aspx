<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClubManagementWebApp.Default" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Club Management</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f7fb;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .header {
            background-color: #d3e4f7;
            padding: 40px;
            margin: 20px auto;
            width: 80%;
            border: 1px solid #aabbd1;
            font-size: 48px;
            font-weight: bold;
        }

        .nav-buttons {
            margin-top: 30px;
        }

        .nav-buttons .btn {
            background-color: #c5d8f2;
            padding: 10px 25px;
            margin: 0 25px;
            border: 1px solid #9fb4d6;
            font-size: 20px;
            cursor: pointer;
        }

        .welcome-box {
            background-color: #b7ccf3;
            padding: 20px;
            width: 60%;
            margin: 40px auto;
            border: 1px solid #89a2cc;
            font-size: 18px;
        }

        .section-title {
            margin: 60px auto 20px;
            background-color: #d7e6f7;
            width: 70%;
            padding: 15px;
            border: 1px solid #aabbd1;
            font-size: 28px;
            font-weight: bold;
        }

        .feature-box {
            width: 60%;
            margin: 30px auto;
            border: 1px solid #8da5c9;
            background-color: #cfe0f9;
        }

        .feature-header {
            background-color: #9fbce8;
            padding: 10px;
            font-size: 22px;
            font-weight: bold;
        }

        .feature-content {
            padding: 30px;
            text-align: left;
            font-size: 18px;
        }

        .feature-content table td {
            padding: 10px 20px;
        }

        .textbox {
        }
        #form1 {
            height: 897px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <!-- MAIN HEADER -->
        <div class="header">
            Club Management
        </div>

        <!-- NAV BUTTONS -->
        <div class="nav-buttons">
            <asp:Button ID="btnMember" runat="server" Text="Member" CssClass="btn" OnClick="btnMember_Click" />
            <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="btn" OnClick="btnHome_Click" />
            <asp:Button ID="btnStaff" runat="server" Text="Staff" CssClass="btn" OnClick="btnStaff_Click" />
        </div>

        <!-- WELCOME BOX -->
        <div class="welcome-box">
            Welcome to our Club Management Web Application! See our TryIt features below
        </div>



        <!-- TRYIT FEATURES TITLE -->
        <div class="section-title">
            TryIt Features
        </div>

        <!-- HASHING FEATURE BOX -->
        <div class="feature-box">
            <div class="feature-header">Hashing DLL</div>

            <div class="feature-content">


                                <!---instructions-->
                        <div style="
                            background-color: #f3f3f3;
                            
                            padding: 10px 15px;
                            margin-bottom: 20px;
                            border-radius: 4px;
                            font-size: 14px;
                        ">
                            <strong>Instructions:</strong><br />
                            1. Enter text to be hashed<br />
                            2. Click <strong>Hash</strong> <br />
                            3. Your Hashed Result will be displayed in the output box<br />
                            This demonstrates the DLL library hash feature.
                        </div>

             <div style="margin-bottom: 20px;">
                    <label>Enter text to be hashed:</label><br />
                    <asp:TextBox ID="txtHashInput" runat="server" CssClass="textbox" Width="629px"></asp:TextBox>
            </div>

                <div style="margin-bottom: 20px;">
                    <label>Output:</label><br />
                    <asp:TextBox ID="txtHashOutput" runat="server" CssClass="textbox" Width="627px"></asp:TextBox>
                </div>

                <asp:Button ID="btnHash" runat="server" Text="Hash" CssClass="btn" OnClick="btnHash_Click" />
            </div>
        </div>
        
        <!-- Cookie FEATURE BOX -->
        <div class="feature-box">
            <div class="feature-header">Cookie Test</div>

            <div class="feature-content">

                <!---instructions-->
                        <div style="
                            background-color: #f3f3f3;
                            
                            padding: 10px 15px;
                            margin-bottom: 20px;
                            border-radius: 4px;
                            font-size: 14px;
                        ">
                            <strong>Instructions:</strong><br />
                            1. Enter a username in the box below.<br />
                            2. Click <strong>Set Cookie</strong> to save it in your browser.<br />
                            3. Close and reopen the page (or restart the project).<br />
                            4. Click <strong>Read Cookie</strong> to load the saved value.<br />
                            This demonstrates cookie storage and retrieval.
                        </div>


            <div style="margin-bottom: 20px;">
                    <label>Enter username to store in cookie:</label><br />
                    <asp:TextBox ID="txtCookieInput" runat="server" CssClass="textbox" Width="629px"></asp:TextBox>
            </div>

                <div style="margin-bottom: 20px;">
                    <label>Cookie Value:</label><br />
                    <asp:TextBox ID="txtCookieOutput" runat="server" CssClass="textbox" Width="627px"></asp:TextBox>
                </div>

                <asp:Button ID="btnSetCookie" runat="server" Text="Set Cookie" CssClass="btn" OnClick="btnSetCookie_Click" />
                &nbsp;
                <asp:Button ID="btnReadCookie" runat="server" Text="Read Cookie" CssClass="btn" OnClick="btnReadCookie_Click" />
            </div>
        </div>
        
        
        <!--To Do-->
        <div class="feature-box">
            <div class="feature-header">TO DO add more try it features</div>

            <div class="feature-content">

             <div style="margin-bottom: 20px;">

            </div>

            </div>
        </div>
                <div class="feature-box">
            <div class="feature-header">TO DO add more try it features</div>

            <div class="feature-content">

             <div style="margin-bottom: 20px;">

            </div>

            </div>
        </div>


    



    </form>
</body>
</html>
