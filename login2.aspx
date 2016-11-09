<%@ Page Title="OTP Based" Language="C#" MasterPageFile="~/akshara.master" AutoEventWireup="true" CodeFile="login2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
        body {
            background-image: url(http://localhost:49748/icon/login3.png);
            background-size:100%;
            background-position:left;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="padding100">
        <div class="container">
               
      <div  id="otp" style=" margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            Sign&nbsp;&nbsp; in (One Time Password)</div>
                        <div style="float: right; font-size: 85%; position: relative; top: -10px">
                        </div>
                    </div>
                    <div class="panel-body">
                        <div id="otpform" class="form-horizontal" role="form">
                            <div class="form-group">
                                &nbsp;<div class="col-md-9">
                                OTP Will
                                    be sent on Email:
                                    <asp:Label ID="Label3" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn-danger active" OnClick="Button1_Click" Text="Generate OTP" Width="200px" />
                                </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-md-3 control-label">
                                    One Time Password</label>
                                <div class="col-md-9">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;
                                    <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" placeholder="One Time Password"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                            </div>                           
                            <div class="form-group">
                                <!-- Button -->
                                &nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" CssClass="btn-danger focus" Text="Authenticate" Width="200px" OnClick="Button2_Click" />
                            </div>
                        </div>
                </div>
            </div>
        </div>
            </div>
         </div>

</asp:Content>

