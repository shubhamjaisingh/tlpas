<%@ Page Title="Pattern Based" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="register1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body {
            background-image: url(http://localhost:49748/icon/reg2.png);
            background-size:100%;
            background-position:left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="padding100">
        <div class="container">
      
        <div id="pattern" style=" margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Sign&nbsp;&nbsp; Up</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="patternform" class="form-horizontal" role="form">
                            <div class="form-group">
                                &nbsp;<div class="col-md-9">
                                </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="100px" ImageUrl="~/icon/Evil_grin_emoticon.png" Width="100px" OnClientClick="first()" OnClick="ImageButton3_Click" />
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/icon/evil-smiley-face.png"  Width="100px" OnClientClick="second()" OnClick="ImageButton2_Click" />
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/icon/evil-smiley-3c.png" Width="100px"  OnClientClick="third()" OnClick="ImageButton1_Click"/>
                           
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">
                                    Password</label>
                                <div class="col-md-9">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="front" runat="server"></asp:Label>
&nbsp;
                                    <asp:Label ID="back" runat="server" Visible="False"></asp:Label>
                                    </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-md-offset-3 col-md-9">
                                    
                                     <asp:Button ID="Button1" runat="server" CssClass="btn-danger active" Height="40px" OnClick="Button1_Click" Text="Confirm Pattern" Width="119px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     <asp:Button ID="Button2" runat="server" CssClass="btn-danger active" Height="40px" OnClick="Button2_Click" Text="Clear?" Width="120px" />
                                    
                                     </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
            </div>
        </div>
</asp:Content>

