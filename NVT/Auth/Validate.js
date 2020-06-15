function validatecontrol() {
    var name = $("#cname").val();
    var num = $("#num").val();
    var cemail = $("#email").val();
    var cpass = $("#pass").val();
    var crpass = $("#rpass").val();
    //Check if value is empty or not
    if (name == "" && num == "" && cemail == "" && cpass == "" && crpass=="") {
        //if empty then assign the border
        $("#cname").css("border", "1px solid red");
        $("#num").css("border", "1px solid red");
        $("#email").css("border", "1px solid red");
        $("#pass").css("border", "1px solid red");
        $("#rpass").css("border", "1px solid red");
    }
    else {
        $("#cname").css("border", "1px solid black");
        $("#num").css("border", "1px solid black");
        $("#email").css("border", "1px solid black");
        $("#pass").css("border", "1px solid black");
        $("#rpass").css("border", "1px solid black");
    }
}