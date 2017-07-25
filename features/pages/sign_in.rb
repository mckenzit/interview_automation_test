class SignInPage
  include PageObject

  page_url $BASE_URL + '/login'

  text_field(:email, :id => 'email')
  text_field(:password, :id => 'password')
  button(:submit_button, :id => 'email-login-form-submit')

end
