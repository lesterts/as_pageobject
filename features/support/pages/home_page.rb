class HomePage
  include PageObject

  page_url "www.adultswim.com"

  link(:login_button, xpath: '/html/body/div[1]/div[2]/nav/div[2]/div/a')
end