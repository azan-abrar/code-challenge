document.addEventListener('turbolinks:load', () => {
  $('body').on('click', '#company-form-submit', function(e) {
    e.preventDefault();

    var company_form = $('#company-form');
    var email_field  = company_form.find('#company-email-field');

    if (email_field.val().length > 0) {
      var email_regex = new RegExp(/\A[^@\s]+@getmainstreet.com/i)
      if (!email_field.val().match(email_regex)) {
        email_field.siblings('#email-field-error').html('Email should be with domain @getmainstreet.com');
        return
      }
    }

    company_form.submit();
  });
});
