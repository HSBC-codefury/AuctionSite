$('#pwdId, #cPwdId').on('keyup', function () {
  if ($('#pwdId').val() != '' && $('#cPwdId').val() != '' && $('#pwdId').val() == $('#cPwdId').val()) {
    $("#submitBtn").attr("disabled",false);
    $('#cPwdValid').show();
    $('#cPwdInvalid').hide();
    $('#cPwdValid').html('Valid').css('color', 'green');
    $('.pwds').removeClass('is-invalid')
  } else {
    $("#submitBtn").attr("disabled",true);
    $('#cPwdValid').hide();
    $('#cPwdInvalid').show();
    $('#cPwdInvalid').html('Not Matching').css('color', 'red');
    $('.pwds').addClass('is-invalid')
  }
});
//----------------------------------------------------------------------------------
//----------------------------------------USER VALIDATION
//----------------------------------------------------------------------------------
function userValidation(v){
    let ajaxRequest;
    try{
        ajaxRequest = new XMLHttpRequest();
    } catch (e){
        try{
            ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP3.0"); }
        catch (e){alert("Your browser broke!");
        return false;
        }
    }

    ajaxRequest.onreadystatechange = function(){
        if(ajaxRequest.readyState == 4 && ajaxRequest.status == 200){         
           
              alert(ajaxRequest.responseText);

        }
    }

    ajaxRequest.open("POST",
        "http://localhost:7070/Code_Fury/UserValidationController",
        true);
    ajaxRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded;"); 		
    ajaxRequest.send("s="+v.value);
}
//------------------------------------------------------------------------------------
//-------------------------------USER Validation ENDS---------------------------------
//------------------------------------------------------------------------------------
//JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict';
  window.addEventListener('load', function () {
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function (form) {
          form.addEventListener('submit', function (event) {
              if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
              }
              form.classList.add('was-validated');
          }, false);
      });
  }, false);
})();
