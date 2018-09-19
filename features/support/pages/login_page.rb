class LoginPage
  include PageObject

  link(:not_registered_button, xpath: '//*[@id="AdultSwimLoginForm"]/div[2]/div/a')
end