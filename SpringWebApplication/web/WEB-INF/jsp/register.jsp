<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<style type="text/css">
		* {margin:0; padding:0; font-family:tahoma; color:#000; line-height:normal;}
		h1 {display:block; background:#ccc; padding:10px; font-size:large}
		.clear {clear:both; height:1px; width:1px; line-height:normal}

		#basicFormVal {padding:20px 10px}
		#basicFormVal p {float:left; font-size:small; font-weight:bold; margin-top:4px}
		#basicFormVal p label {float:left}		
		#basicFormVal p input {float:left}
		#basicFormVal p span {*margin-top:3px; float:left}
		#basicFormVal label {display:block; margin:5px 12px 2px; font-size:small; font-weight:bold}
		#basicFormVal input, #basicFormVal select, #basicFormVal textarea {margin:1px 12px 15px}
		#basicFormVal p.s input label {margin-left:0; }
		#basicFormVal p.s input {margin-top:6px; margin-right:0}
		#basicFormVal p.formButtons {margin-top:15px}
		#submitBtn {margin:5px 0px 2px 12px; width:80px; float:left}
		#resetBtn {margin:5px 0px 2px 5px; width:80px; float:left}
</style>
<script> 
$(document).ready(function(){
    var name_ok=false;
    var reg_name =new RegExp("[a-zA-Z]{2}[0-9]{7}$");
    var phone_ok=false;
    var reg_phone= new RegExp("[0-9]{3}-[0-9]{3}-[0-9]{4}$");
    var email_ok=false;
    var reg_email=new RegExp("[a-zA-Z0-9]@[a-zA-Z0-9]");
    var confirmpassword_ok=false;
    
   $("#name").on('propertychange input', function(){
       var dInput = this.value;
      // alert($("input[name*='gender']:checked").length=='1');
      //var checkedGender = ($("input[name*='gender1']").prop("checked")||$("input[name*='gender2']").prop("checked"));
       //alert($("input[name='hobby']").is(":checked"));
        
      if (reg_name.test(dInput)!=true){ 
           $("#name").css("border-color", "red");
           $("#name").css("border-width","5px"); 
           $("#submitBtn").prop('disabled', true);
       }else{
           $("#name").css("border-color", "green");
           $("#name").css("border-width","5px");           
            name_ok=true;  
           var checkedGender= ($("input[name*='gender']:checked").length=='1');
           var countryChecked =$("#country").prop("selectedIndex") != 0;
           var hobbyChecked = $("input[name='hobby']").is(":checked");
           if (name_ok && phone_ok && email_ok && feedback_ok && checkedGender &&countryChecked&&confirmpassword_ok&&hobbyChecked){
                $("#submitBtn").prop('disabled', false);
             }
       }        
    });    
    $("#phone").on("input", function(){
       var dInput = this.value;
       if (reg_phone.test(dInput)!=true){
           $("#phone").css("border-color", "red");
           $("#phone").css("border-width","5px"); 
           $("#submitBtn").prop('disabled', true);
       }else{
           $("#phone").css("border-color", "green");
           $("#phone").css("border-width","5px");           
           phone_ok=true;
           var checkedGender= ($("input[name*='gender']:checked").length=='1');
           var countryChecked =$("#country").prop("selectedIndex") != 0;
           var hobbyChecked = $("input[name='hobby']").is(":checked");
           if (name_ok && phone_ok && email_ok && feedback_ok && checkedGender &&countryChecked&&confirmpassword_ok&&hobbyChecked){
                $("#submitBtn").prop('disabled', false);
           }
       }
     });
     $("#feedback").on("input", function(){
       var dInput = this.value;
       if (dInput.length<10){
           $("#feedback").css("border-color", "red");
           $("#feedback").css("border-width","5px");  
           $("#submitBtn").prop('disabled', true);
       }else{
           $("#feedback").css("border-color", "green");
           $("#feedback").css("border-width","5px");           
           feedback_ok=true;
           var checkedGender= ($("input[name*='gender']:checked").length=='1');
           var countryChecked =$("#country").prop("selectedIndex") != 0;
            var hobbyChecked = $("input[name='hobby']").is(":checked");
           if (name_ok && phone_ok && email_ok && feedback_ok && checkedGender &&countryChecked&&confirmpassword_ok&&hobbyChecked){
                $("#submitBtn").prop('disabled', false);
                }
           
       }
        
  });       
  $("#email").on("input", function(){
       var dInput = this.value;
       if (reg_email.test(dInput)!=true){
           $("#email").css("border-color", "red");
           $("#email").css("border-width","5px");  
           $("#submitBtn").prop('disabled', true);
       }else{
           $("#email").css("border-color", "green");
           $("#email").css("border-width","5px");           
           email_ok=true;  
           var checkedGender= ($("input[name*='gender']:checked").length=='1');
           var countryChecked =$("#country").prop("selectedIndex") != 0;
            var hobbyChecked = $("input[name='hobby']").is(":checked");
           if (name_ok && phone_ok && email_ok && feedback_ok && checkedGender &&countryChecked&&confirmpassword_ok&&hobbyChecked){
                $("#submitBtn").prop('disabled', false);
            }
       }
        
  });
   $("#confirmpassword").on("input", function(){
       var passwordObj=document.getElementById("password");
       var password=passwordObj.value;
       var dInput = this.value;
       if (dInput!=password){
           $("#confirmpassword").css("border-color", "red");
           $("#confirmpassword").css("border-width","5px");  
           $("#submitBtn").prop('disabled', true);
       }else{
           $("#confirmpassword").css("border-color", "green");
           $("#confirmpassword").css("border-width","5px");           
           confirmpassword_ok=true; 
           var checkedGender= ($("input[name*='gender']:checked").length=='1');
           var countryChecked =$("#country").prop("selectedIndex") != 0;
            var hobbyChecked = $("input[name='hobby']").is(":checked");
           if (name_ok && phone_ok && email_ok && feedback_ok && checkedGender &&countryChecked&&confirmpassword_ok&&hobbyChecked){
                $("#submitBtn").prop('disabled', false);
            }
       }
        
  });
  
 
});
</script>

</head>
    
        <h1>Simple Form Validation using jQuery</h1>
        
	<s:form commandName="registerUser" method="post" action="" id="basicFormVal">
		<label for="Name">Username:</label>
		<input type="text" id="name" name="name"/>
                
                <label for="Phone">Phone:</label>
		<input type="text" id="phone" name="phone"/>

		<label for="E-Mail">E-Mail:</label>
		<input type="text" id="email" name="email"/>
                
                <label for="Password">Password:</label>
		<input type="text" id="password" name="password"/>
                
                <label for="confirmpassword">Confirm Password:</label>
		<input type="text" id="confirmpassword" name="confirmpassword"/>
                
               <label for="Name">Hobbies:</label> 
                <s:checkbox path="hobby" name="hobby" value="Game" label="Game" /> 
        	<s:checkbox path="hobby" name="hobby" value="Singing" label="Singing" /> 
                <s:checkbox path="hobby" name="hobby" value="Painting" label="Painting" />
	<!--	<p><input type="checkbox" id="hobby1" name="hobby" path="hobby"  /><span>game</span></p>
		<p><input type="checkbox" id="hobby2" name="hobby" path="hobby"/><span>singing</span></p>
                <p><input type="checkbox" id="hobby3" name="hobby" path="hobby"/><span>painting</span></p>
		<p><input type="checkbox" id="hobby4" name="hobby" path="hobby" /><span>basketball</span></p>-->
		<div class="clear">&#160;</div>	
                
		<label for="Name">Gender:</label>		
		<!--<p><input type="radio" id="male" name="gender" /><span>Male</span></p>
		<p><input type="radio" id="female" name="gender" /><span>Female</span></p>-->
                <s:radiobutton path="gender" value="Male" label="Male" /> 
                <s:radiobutton path="gender" value="Female" label="Female" />
                
		<div class="clear">&#160;</div>		

            <label for="country">Country:</label>
            <s:select path="country" name="country">
            <s:option value="Select your coutnry" label="Select your country" />
            <s:option value="Algeria" label="Algeria" />
            <s:option value="USA" label="USA" />
            <s:option value="3" label="UK" />
            </s:select>
            <!--    <select id="country">
			<option selected="selected">Please Select your Country</option>
			<option value="DZ">Algeria</option>
			<option value="AS">American Samoa</option>
			<option value="AD">Andorra</option>
			<option value="BS">Bahamas</option>
			<option value="BH">Bahrain</option>
                </select> -->
		<label for="Feedback">Feedback:</label>
		<s:textarea id="feedback" path="feedback" rows="6" cols="40"/>
		<div class="clear">&#160;</div>

		<p class="s"><input type="checkbox" id="signup" name="newsletters" /><label for="newsletters">Sign-up for our Newsletters:</label>
		</p>
		<div class="clear">&#160;</div>

		<p class="formButtons">
			<input type="submit" value="Submit" disabled="disabled" id="submitBtn" />
			<input type="reset" value="Reset" id="resetBtn" />
		</p>

	</s:form>
    
</html>
