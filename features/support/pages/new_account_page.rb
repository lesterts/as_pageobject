class NewAccountPage
  include PageObject

  DEFAULT_DATA = {
      'birth_month' => Date.parse(Faker::Date.backward(365).to_s).strftime('%B'),
      'birth_day' => Faker::Number.positive(1, 28).to_s,
      'birth_year' => Faker::Number.positive(1910, 2002).to_s,
      'username' => Faker::Name.first_name,
      'email' => Faker::Internet.email,
      'password' => 'AsPassword1',
      'password_retype' => 'AsPassword1'
  }

  #DEFAULT_DATA = {
  #    'birth_month' => 'May',
  #    'birth_day' => '28',
  #    'birth_year' => '1981',
  #    'username' => 'astest001',
  #    'email' => 'astest@gmail.com',
  #    'password' => 'AsPassword1!',
  #    'password_retype' => 'AsPassword1!'
  #}

  select_list(:birth_month, xpath: '//*[@id="AdultSwimRegisterForm__birthMonth"]')
  select_list(:birth_day, xpath: '//*[@id="AdultSwimRegisterForm"]/div/div/div[2]/div/div/div[2]/div/select')
  select_list(:birth_year, xpath: '//*[@id="AdultSwimRegisterForm"]/div/div/div[2]/div/div/div[3]/div/select')
  text_field(:username, xpath: '//*[@id="AdultSwimRegisterForm__username"]')
  text_field(:email, xpath: '//*[@id="AdultSwimRegisterForm__email"]')
  text_field(:password, xpath: '//*[@id="AdultSwimRegisterForm__password"]')
  text_field(:password_retype, xpath: '//*[@id="AdultSwimRegisterForm__passwordRetype"]')
  checkbox(:tos_checkbox, xpath: '//*[@id="AdultSwimRegisterForm"]/div/div/div[8]/div/div/label/input')
  button(:submit, xpath: '//*[@id="AdultSwimRegisterForm"]/div/div/div[9]/div/button')


  def signup(data = {})
    populate_page_with DEFAULT_DATA.merge(data)
    submit
  end

  #def signup(data = {})
  #  data = DEFAULT_DATA.merge(data)
  #  self.birth_month = data['birth_month']
  #  self.birth_day = data['birth_day']
  #  self.birth_year = data['birth_year']
  #  self.username = data['username']
  #  self.email = data['email']
  #  self.password = data['password']
  #  self.password_retype = ['password_retype']
  #  submit
  #end
end