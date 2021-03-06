<!DOCTYPE html>
<html>
<head>
<script>
	
	function login(){
		$.ajax({
			type:"POST",
			url:"secureLoginUrl",
			data:$("#loginForm").serialize(),
			success:function(res){	
			alert("ok");
			},
			error:function(){
			}
		});
	} 
	
	function signup()
	{		
		$.ajax({
			type:"POST",
			url:"RegistrationUrl",
			data:$("#signupForm").serialize(),
			success:function(data){	
			alert(data);
			},
			error:function(){
			alert("error");	
			}
		});
	}
	
</script>
<meta charset="UTF-8">
<title>Sign-Up/Login Form</title>
</head>
<body>
	<div class="form">
		<ul class="tab-group">
			<li class="tab active"><a href="#login">Log In</a></li>
			<li class="tab "><a href="#signup">Sign Up</a></li>
		</ul>
		<div class="tab-content">
			<div id="login">
				<h1>Welcome Back!</h1>
				<form id="loginForm">
					<div class="field-wrap">
						<label>Email Address<span class="req" >*</span>
						</label><input type="email" name="email" id="loginemailid" required="required" />
					</div>
					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" name="password" id="loginuserpassword" required="required" />
					</div>
					<p class="forgot">
						<a href="#">Forgot Password?</a>
					</p>
					<button class="button button-block" onclick="login()"/>Log In</button>
				</form>
			</div>
			<div id="signup">
				<h1>Sign Up for Free</h1>
				<form id="signupForm">
					<div class="top-row">
						<div class="field-wrap">
							<label> UserName<span class="req">*</span>
							</label> <input type="text" id="signupusername" name="username" required autocomplete="on" />
						</div>
						<div class="field-wrap">
							<label> MobileNumber<span class="req">*</span>
							</label> <input type="text" id="signupmobilenumber" name="usermobileno" required autocomplete="on" />
						</div>
					</div>
					<div class="field-wrap">
						<label> Email Address<span class="req">*</span>
						</label> <input type="email" id="signupemail" name="useremailid" required autocomplete="on" />
					</div>
					<div class="field-wrap">
						<label> Password<span class="req">*</span>
						</label> <input type="password" id="signuppassword" name="userpassword" required autocomplete="on" />
					</div>
					<button type="submit" class="button button-block" onclick="signup()"/>SignUp</button>
				</form>
			</div>
		</div>
	</div>
	<script src='/js/jquery-3.1.1.min.js' type='text/javascript'></script>
	<link href='<%=request.getContextPath()%>/css/style.css'rel='stylesheet' type='text/css'>
	<link href='<%=request.getContextPath()%>/scss/style.scss'rel='stylesheet' type='text/css'>
	<script src="<%=request.getContextPath()%>/js/jquery-1.11.2.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/index.js"></script>
</body>
<div id="abc"></div>
</html>
