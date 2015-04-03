function validateNewUserDetails(){
    console.log("validation check..")
    $("#flashMessage").hide()
    $("#error-div").hide()
    $("#res_loader").hide();
    var hasError = false
    var displayName = $.trim($("#displayName").val());
    var inputEmail = $.trim($("#inputEmail").val());
    var inputPassword = $.trim($("#inputPassword").val());
    var confirmPassword = $.trim($("#confirmPassword").val());
    if(displayName=="" || inputEmail=="" || inputPassword==""|| confirmPassword==""){
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Please Fill out All Fields.")
    }
    if( !hasError && !validateEmail(inputEmail)) {
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Please enter a valid Email.")
    }
    if(!hasError && inputPassword.length<4){
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Password contains atleast 4 characters.")
    }
    if(!hasError && inputPassword !=confirmPassword){
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Passwords are not match.")
    }
    if(hasError)return false
    else{
        $("#res_loader").show();
        $.ajax({
            type: "POST",
            url: "login/saveUser",
            data: {
                displayName:displayName,
                inputEmail:inputEmail,
                inputPassword:inputPassword
            },
            success: function(data, status){
                location.href = "http://localhost:8080/developerBeans/";
            },
            error: function(data, status){
                $("#res_loader").hide()
                $("#error-div").show()
                $("#error-message").html(data.responseText)
            }
        });
    }
}

function validateEmail($email) {
    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    return emailReg.test( $email );
}

function validateUserDetails(){
    console.log("validation check..")
    $("#flashMessage").hide()
    $("#error-div-login").hide()
    var hasError = false
    var inputEmail = $.trim($("#inputEmail-login").val());
    var inputPassword = $.trim($("#inputPassword-login").val());
    if (inputEmail == 'Email') {
        inputEmail = '';
    }
    if (inputPassword == 'Password') {
        inputPassword = '';
    }
    if(inputEmail=="" || inputPassword==""){
        hasError = true
        $("#error-div-login").show()
        $("#error-message-login").html("Please Fill out All Fields.")
    }
    if(hasError)return false
    else return true
}

function validateforgetDetails(){
    console.log("validation check..")
    $("#flashMessage").hide()
    $("#error-div-fog").hide()
    $("#fog_loader").hide();
    $("#error-div-fog-success").hide()
    var hasError = false
    var inputEmail = $.trim($("#inputEmail-fog").val());
    if(inputEmail==""){
        hasError = true
        $("#error-div-fog").show()
        $("#error-message-fog").html("Please enter Email.")
    }
    if( !hasError && !validateEmail(inputEmail)) {
        hasError = true
        $("#error-div-fog").show()
        $("#error-message-fog").html("Please enter a valid Email.")
    }
    if(hasError)return false
    else {
    {
        $("#fog_loader").show();
        $.ajax({
            type: "POST",
            url: "login/forget",
            data: {
                inputEmail:inputEmail
            },
            success: function(data, status){
                $("#fog_loader").hide();
                $("#error-div-fog-success").show()
                $("#error-message-fog-success").html(data)
                
            },
            error: function(data, status){
               $("#fog_loader").hide();
                $("#error-div-fog").show()
                $("#error-message-fog").html(data.responseText)
            }
        });
    }
    }
}