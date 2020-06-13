<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/AuthMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Auth_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function ShowPopup(title, body) {
            $("#RegisterModal .modal-title").html(title);
            $("#RegisterModal .modal-body").html(body);
            $("#RegisterModal").modal("show");
        }
    </script>


    <div class="register-box">
        <div class="register-logo">
            <img src="../dist/img/logo.jpg" alt="Logo" />
            <div>
                <a href="#"><b>Kirti Telnet Pvt Ltd</b></a>
            </div>
        </div>

        <div class="register-box-body">
            <p class="login-box-msg">Register your Company</p>
            <div>
                <div class="form-group has-feedback">
                    <asp:TextBox CssClass="form-control" ID="cname" placeholder="Organization Name" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-briefcase form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="num" CssClass="form-control" placeholder="Phone number" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="email" CssClass="form-control" placeholder="Corporate email only" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="pass" CssClass="form-control" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="form-group has-feedback">
                    <asp:TextBox ID="rpass" CssClass="form-control" placeholder="Retype password" TextMode="Password" runat="server"></asp:TextBox>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div>
                            <asp:CheckBox runat="server" />
                            <span style="font-size: medium; padding: 5px;">I agree to the <a href="#">terms</a></span>
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <asp:Button CssClass="btn btn-primary btn-block btn-flat" OnClick="Button1_Click" runat="server" Text="Register" />
                    </div>
                </div>
            </div>
            <br />
            <a href="Login.aspx" class="text-center">I already have a account</a>
        </div>
    </div>
    <div class="modal fade" id="RegisterModal" tabindex="-1" role="dialog" aria-labelledby="RegisterLabel" aria-hidden="true">
        <div class="modal-dialog">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">
                                <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <asp:Label ID="lblBody" runat="server"></asp:Label>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="CloseBtn" CssClass="btn btn-primary btn-block btn-flat" OnClick="CloseBtn_Click"  aria-hidden="true" runat="server" Text="Close" />
                        </div>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

