Given('I am on adultswim.com') do
  visit(HomePage)
end

And('I click the login button') do
  on(HomePage).login_button
end

And('I click the Not Registered Start Here button') do
  on(LoginPage).not_registered_button
end

And('I enter my information with an invalid user name') do
  on(NewAccountPage).signup('username' => 'as@test')
end

Then('I should see {string}') do |expected_error|
  expect(@current_page.text).to include expected_error
end

And('I enter my information with an invalid email address') do
  on(NewAccountPage).signup('email' => 'quack')
end

And('I enter my information with unmatching password re-enter') do
  on(NewAccountPage).signup('password' => 'AsPassword2!')
end

And('I enter my information') do
  on(NewAccountPage).signup
end

And('I check the terms of service box') do
  on(NewAccountPage).check_tos_checkbox
end

And('I click submit') do
  on(NewAccountPage).submit
end