Given(/^I am not logged in visitor$/) do
  visit 'http://demo.redmine.org/'
end

When(/^I click sign in button$/) do
  find(:xpath, "//a[contains(text(),'Sign in')]").click
end

Then(/^I see the log in form is opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
end

When(/^I fill in log in form with valid credentials$/) do
  find('#username').set 'user_tt'
  find('#password').set 'qwerty123456'
end

And(/^I click log in button$/) do
  find(:xpath, '//*[@id="login-form"]/form/table/tbody/tr[4]/td[2]/input').click
end

Then(/^I become a logged user$/) do
  expect(page).to have_content 'Logged in as'
end