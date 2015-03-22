function validateNewUserDetails(){
    console.log("validation check..")
    $("#flashMessage").hide()
    $("#error-div").hide()
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
    else return true
}

function validateEmail($email) {
    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    return emailReg.test( $email );
}

function validateUserDetails(){
    console.log("validation check..")
    $("#flashMessage").hide()
    $("#error-div").hide()
    var hasError = false
    var inputEmail = $.trim($("#inputEmail").val());
    var inputPassword = $.trim($("#inputPassword").val());
    if(inputEmail=="" || inputPassword==""){
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Please Fill out All Fields.")
    }
    if(hasError)return false
    else return true
}

function validateforgetDetails(){
    console.log("validation check..")
    $("#flashMessage").hide()
    $("#error-div").hide()
    var hasError = false
    var inputEmail = $.trim($("#inputEmail").val());
    if(inputEmail==""){
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Please enter Email.")
    }
    if( !hasError && !validateEmail(inputEmail)) {
        hasError = true
        $("#error-div").show()
        $("#error-message").html("Please enter a valid Email.")
    }
    if(hasError)return false
    else return true
}