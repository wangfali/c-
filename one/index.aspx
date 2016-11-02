<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="one.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>注册页面</title>
    <meta charset="utf-8"/>
    <link href="Content/bootstrap.css" type="text/css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
 <ol class="breadcrumb" style="float:right; width:20%; background-color:white">
    <li><a href="#">设为首页</a></li>
    <li><a href="#">加入收藏</a></li>
  <li class="active">联系我们</li>
</ol>
  <div class="input-group" style="width:20%; float:right">
  <input type="text" class="form-control">
  <span class="input-group-btn"><button class="btn btn-default " >搜索</button></span>
</div>      
    <h1>FANXING<span style="font-size:x-small">圈子联盟</span></h1>
    </div>
     <div style=" padding: 2px 4px;font-size: 90%;color: #c7254e;white-space: nowrap;background-color: #f9f2f4;border-radius: 4px;">
             <h3><span class="glyphicon  glyphicon-envelope">&nbsp;</span>注册繁星圈子联盟</h3>
     </div>
        <div>
        <div style=" padding: 20px 100px; border-width:1px; outline-width:1px; border-radius:10px; width:60%;float:left;
            border-color:black";>
            会员名:&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="username">
            </asp:TextBox><asp:RequiredFieldValidator runat="server" Text="*" ControlToValidate="username"></asp:RequiredFieldValidator><asp:RegularExpressionValidator runat="server" ControlToValidate="username" ValidationExpression="[0-9a-zA-Z_]+$" ErrorMessage="*只能输入数字、字母、下划线">
            </asp:RegularExpressionValidator><br /><br />
            密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:<asp:TextBox runat="server" TextMode="Password" ID="password">
            </asp:TextBox><asp:CustomValidator runat="server" ID="pwdCertain" ControlToValidate="password" ClientValidationFunction="pwd">
            </asp:CustomValidator><span id="one" style="color:red"></span><asp:RequiredFieldValidator runat="server" ControlToValidate="password"></asp:RequiredFieldValidator><br /><br />
            确认密码:<asp:TextBox runat="server" ID="ensure"></asp:TextBox><asp:RequiredFieldValidator runat="server" ControlToValidate="ensure" Text="*"></asp:RequiredFieldValidator><asp:CompareValidator runat="server" ControlToValidate="ensure" ControlToCompare="password" ErrorMessage="两次密码不一致"></asp:CompareValidator><br /><br />
            昵&nbsp;&nbsp;&nbsp;&nbsp;称：<asp:TextBox runat="server" ID="othername"></asp:TextBox><asp:RequiredFieldValidator runat="server" Text="  *" ErrorMessage="此处不能为空" ControlToValidate="othername" Font-Size="Large" Display="Static"></asp:RequiredFieldValidator><br /><br />
            性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;<asp:RadioButton runat="server" Text="男" GroupName="sex"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton runat="server" Text="女" GroupName="sex"/><br /><br />
            电&nbsp;&nbsp;&nbsp;&nbsp;话:<asp:TextBox runat="server" TextMode="Phone"></asp:TextBox><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;Email:<asp:TextBox runat="server" TextMode="Email" ID="email"></asp:TextBox><asp:RequiredFieldValidator runat="server" Text="*" ErrorMessage="此处不能为空" ControlToValidate="email" Font-Size="Large" Display="Static"></asp:RequiredFieldValidator><br /><br />
            所在城市:<asp:TextBox runat="server"></asp:TextBox><br /><br />
            <asp:Button runat="server" Text="注册" CssClass="btn btn-success"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button runat="server" Text="返回" CssClass="btn btn-warning" />
           </div>
             <div style="padding: 20px 20px; border-width:10px;  border-radius:5px; background-color:#dcb8ed; text-align: center; width:40%;float:right; height:435px;
            border-color:black";>
              <asp:ValidationSummary runat="server" DisplayMode="BulletList" />
             </div>
            </div>
        <div style="float:none; padding-top:435px">
       <footer style=" background: #b0b0b0 none repeat scroll 0 0; padding: 1em 0; text-align:center;"> 
         <p>Copyright © 2015.Company name All rights reserved.More Templates </p>
       </footer>
        </div>
    </form>
    <script type="text/javascript">
        function pwd() {
            var a = document.getElementById("password");
            var b = document.getElementById("one");
            var str = a.value;
            if (str.length > 6) {
                b.innerHTML="密码强度为     高";
            } else {
                b.innerHTML = "密码强度为     低";
            }
        }
    </script>
</body>
</html>
