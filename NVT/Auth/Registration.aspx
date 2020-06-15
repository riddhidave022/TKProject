<%@ Page Title="" Language="C#" MasterPageFile="~/Auth/AuthMaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Auth_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="Validate.js"></script>
   <!-- <script type="text/javascript">
        function ShowPopup(title, body) {
            $("#RegisterModal .modal-title").html(title);
            $("#RegisterModal .modal-body").html(body);
            $("#RegisterModal").modal("show");
        }
    </script>-->
    <script type="text/javascript"> 
        function CheckMyCheckBox(source, args) {
            var elem = document.getElementById('<%= ChckBox.ClientID %>');

            if (elem.checked) {
                args.IsValid = true;
            }
            else {
                args.IsValid = false;
            }
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
                            <asp:CheckBox ID="ChckBox" runat="server" />
                            <span style="font-size: medium; padding: 5px;">I agree to the <a href="#">terms</a></span><br />
                        </div>
                    </div>
                    <div class="col-xs-4">
                        <asp:Button CssClass="btn btn-primary btn-block btn-flat" OnClick="Button1_Click" runat="server" Text="Register" />
                    </div>
                </div>
            </div>
        </div>
        <br />
        <a href="Login.aspx" class="text-center">I already have a account</a>
    </div>
   <!-- <div class="register-box-msg">
        <asp:RequiredFieldValidator ID="CnameValidator" runat="server" ForeColor="Red" ControlToValidate="cname">
            Company Name is required
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cname" ErrorMessage="Enter valid company name" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]*$">
            </asp:RegularExpressionValidator>
        </asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="NumberValidator" runat="server" ForeColor="Red" ControlToValidate="num">
            Phone Number is Required
            <asp:RegularExpressionValidator ID="RegularExpression2" runat="server" ControlToValidate="num" ErrorMessage="Enter valid phone number" ForeColor="Red" ValidationExpression="[0-9]{13}">
            </asp:RegularExpressionValidator>
        </asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ForeColor="Red" ControlToValidate="email">
            Email is Required
        </asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ForeColor="Red" ControlToValidate="pass">
            Password is Required
        </asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="RPasswordValidator" runat="server" ForeColor="Red" ControlToValidate="rpass">
            Retype the Password
            <asp:CompareValidator ID="PasswordCompare" ControlToValidate="rpass" ControlToCompare="pass" Type="String" Operator="Equal" runat="server" ForeColor="Red">
                        Password do not match
            </asp:CompareValidator>
        </asp:RequiredFieldValidator><br />
        <asp:CustomValidator runat="server" ID="CheckBoxRequired" ForeColor="Red" EnableClientScript="true" OnServerValidate="CheckBoxRequired_ServerValidate" ClientValidationFunction="CheckMyCheckBox" Text="Check the checkbox"></asp:CustomValidator>
    </div>-->
</asp:Content>

