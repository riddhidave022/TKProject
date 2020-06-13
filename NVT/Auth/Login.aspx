<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/AuthMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Auth_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="login-box">
        <div class="login-logo">
            <div>
                <img src="../dist/img/logo.jpg" alt="Logo" />
            </div>
            <a href="#"><b>Kirti Telnet Pvt Ltd</b></a>
        </div>
        <div class="login-box-body">
            <p class="login-box-msg">Sign in to start your session</p>
            <div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="cemail" CssClass="form-control" placeholder="Corporate email only" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="passwd" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <asp:CheckBox runat="server" />
                            <label style="font-size: medium; padding: 5px;">
                                Login for a week
                            </label>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <asp:Button ID="sub_btn" CssClass="btn btn-primary btn-block btn-flat" Text="Submit" OnClick="sub_btn_Click" runat="server" />
                    </div>
                </div>
            </div>
            <br />
            <a href="#">I forgot my password</a><br>
            <a href="Registration.aspx" class="text-center">Register your company</a>

        </div>
    </div>
</asp:Content>

