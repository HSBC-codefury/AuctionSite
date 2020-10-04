 
 $('#pwdId, #cPwdId').on('keyup', function () {
    if ($('#pwdId').val() != '' && $('#cPwdId').val() != '' && $('#pwdId').val() == $('#cPwdId').val() ) {
      $('#cPwdValid').show();
      $('#cPwdInvalid').hide();
      $('#cPwdInvalid').html('Passwords Match').css('color', 'green');
      $('.myCpwdClass').addClass('is-valid');
      $('.myCpwdClass').removeClass('is-invalid');
      $("#submitBtn").attr("disabled",false);
      $('#submitBtn').addClass('btn-primary').removeClass('btn-secondary');
      for (i = 0; i < myInputElements.length; i++) {
        var myElement = document.getElementById(myInputElements[i].id);
        if (myElement.classList.contains('is-invalid')) {
          $("#submitBtn").attr("disabled",true);
          $('#submitBtn').addClass('btn-secondary').removeClass('btn-primary');
          break;
        }
      }
    } else {
      $('#cPwdValid').hide();
      $('#cPwdInvalid').show();
      $('#cPwdInvalid').html('Not Matching').css('color', 'red');
      $('.myCpwdClass').removeClass('is-valid');
      $('.myCpwdClass').addClass('is-invalid');
      $("#submitBtn").attr("disabled",true);
      $('#submitBtn').addClass('btn-secondary').removeClass('btn-primary');
    }
  });




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


