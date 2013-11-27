<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		
		<script>
			function login() {
				if (!document.getElementById("popup")) {
					var f = document.createElement("form");
					f.id = "popup";
					f.name = "login";
					
					var uname = document.createTextNode("Username: ");
					
					var u = document.createElement("input"); //input element, text
					u.type="text";
					u.name="username";			
					
					var br1 = document.createElement("br");
					
					var pw = document.createTextNode("Password: ");
					
					var p = document.createElement("input"); //input element, text
					p.type="password";
					p.name="password";
					
					var br2 = document.createElement("br");
					
					var login = document.createElement("button"); //input element, Submit button
					login.type="button";
					login.onclick=function() {
						// AJAX
						var username=document.forms["login"]["username"].value;
						var password=document.forms["login"]["password"].value;
						var xmlhttp;
						if (window.XMLHttpRequest)
							{// code for IE7+, Firefox, Chrome, Opera, Safari
							xmlhttp=new XMLHttpRequest();
						}
						else
							{// code for IE6, IE5
							xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
						}
						xmlhttp.open("POST","AJAXlogin",true);
						xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
						xmlhttp.send("username="+username+"&password="+password);
						xmlhttp.onreadystatechange=function(){
							if(xmlhttp.readyState==4 && xmlhttp.status==200)
								{
								alert(xmlhttp.responseText);
						if (xmlhttp.responseText=="true") {
							localStorage.user=username;
							window.location = "index.jsp";
						}
						else {
							alert("Username/password salah");
							f.parentNode.removeChild(f);
						}
					}
						}
					}
					var t=document.createTextNode("Login");
					login.appendChild(t);
					
					var cancel = document.createElement("button");
					cancel.type="button";
					cancel.onclick=function() {
						f.parentNode.removeChild(f);
					}
					var t=document.createTextNode("Cancel");
					cancel.appendChild(t);
					
					f.appendChild(uname);
					f.appendChild(u);
					f.appendChild(br1);
					f.appendChild(pw);
					f.appendChild(p);
					f.appendChild(br2);
					f.appendChild(login);
					f.appendChild(cancel);
				
					document.body.appendChild(f);
				}
			}
			function logout() {
				localStorage.clear();
				window.location="index.jsp";
			}
			function renderAccount() {
				var element=document.getElementById("account");
				if (localStorage.user==null) {
					element.innerHTML='<button type="button" onclick="login()">Login</button><br>';
					element.innerHTML+='<a href="registrasi.jsp"><button type="button">Register</button></a><br>';
					element.innerHTML+='<a href="cart.jsp"><button type="button">Cart</button></a><br>';
				}
				else {
					element.innerHTML="Welcome <a href='profile.jsp'>"+localStorage.user+"</a><br>";
					element.innerHTML+='<button type="button" onclick="logout()">Logout</button><br>';
					element.innerHTML+='<a href="cart.jsp"><button type="button">Cart</button></a><br>';
				}
			}
		</script>

	