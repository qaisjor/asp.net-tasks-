<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="masterPage.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Login Form</h2>
                    <div class="mb-3">
                        <label for="Email" class="form-label">Email address</label>
                        <asp:TextBox ID="Email" CssClass="form-control bg-info bg-opacity-10 border border-primary" 
                            runat="server" ></asp:TextBox>
                        <%--<input id="Reset1" type="reset" value="reset" />--%>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" ErrorMessage="requied field"
                            ValidationGroup="login"></asp:RequiredFieldValidator> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="enter a valid email"></asp:RegularExpressionValidator>

                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="password" runat="server" CssClass="form-control bg-info bg-opacity-10 border border-primary" 
                            ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="requied field"
                            ValidationGroup="login"></asp:RequiredFieldValidator>
                    </div>
                    
                    <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>
                    <div class="d-grid">
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Button" ValidationGroup="login" OnClick="Button1_Click"/>
                        <button id="clear" onclick="clear()">clear</button>
                    </div>
                <div class="mt-3">
                    <p class="mb-0  text-center">Don't have an account? <a href="signup.aspx"
                            class="text-primary fw-bold">Sign
                            Up</a></p>
                </div>
            </div>
        </div>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-4 p-5 shadow-sm border rounded-5 border-primary">
                <h2 class="text-center mb-4 text-primary">Login Form</h2>
                    <div class="mb-3">
                        <label for="Email" class="form-label">Email address</label>
                        <asp:TextBox ID="Email1" CssClass="form-control bg-info bg-opacity-10 border border-primary" 
                            runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email1" ErrorMessage="requied field"
                            ValidationGroup="signup"></asp:RequiredFieldValidator> 
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ErrorMessage="enter a valid email"></asp:RegularExpressionValidator>

                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <asp:TextBox ID="password1" runat="server" CssClass="form-control bg-info bg-opacity-10 border border-primary" 
                            ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password1" ErrorMessage="requied field"
                            ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </div>
                    
                   <div class="mb-3">
                        <label for="confpassword" class="form-label">Password</label>
                        <asp:TextBox ID="confpassword" runat="server" CssClass="form-control bg-info bg-opacity-10 border border-primary" 
                            ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confpassword" ErrorMessage="requied field"
                            ValidationGroup="signup"></asp:RequiredFieldValidator>
                    </div>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password dose't match" 
                    ControlToCompare="password1" ControlToValidate="confpassword" Operator="Equal" ></asp:CompareValidator>
                    
                    <p class="small"><a class="text-primary" href="forget-password.html">Forgot password?</a></p>
                    <div class="d-grid">
                        <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Button" ValidationGroup="signup" OnClientClick="check()" OnClick="Button2_Click"/>
                        
                    </div>
                <div class="mt-3">
                    <p class="mb-0  text-center">Don't have an account? <a href="signup.aspx"
                            class="text-primary fw-bold">Sign
                            Up</a></p>
                </div>
            </div>
        </div>

    
</asp:Content>