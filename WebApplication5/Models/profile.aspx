<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication5.Models.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../Content/bootstrap.js"></script>
    <script src="../Content/jquery-1.10.2.min.js"></script>
    <script src="../Content/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/1.css" rel="stylesheet" />

</head>
<body>
        <div class="groundtop">
        <div class="topcontainer">
            <div class="row inner">
                <div class="col-xs-6" style="height:100px;">
                    <div class="text25">SMARTHOUSE</div>
                </div>
                
                <div class="col-xs-6" style="height:100px;">
                    <
                    <div class="text12">Вхід</div>
                    <div class="text12">Реєстрація</div>
               
                    
                </div>
            </div>


        </div>
    </div>

    <div class="groundmiddle">
        <div class="maincontainer">

            <div class="content">
                <div>
                    <asp:Table runat="server" CssClass="table table-inverse">
                       <asp:TableHeaderRow>
                           <asp:TableHeaderCell>Type</asp:TableHeaderCell>
                           <asp:TableHeaderCell>On/Off</asp:TableHeaderCell>
                       </asp:TableHeaderRow>
                    </asp:Table>
                </div>
                
                

                
               
                

            </div>

        </div>
    </div>

</body>
</html>
