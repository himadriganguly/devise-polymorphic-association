Given(/^I am a guest$/) do  
end

When(/^I go to home page$/) do
  visit root_url 
end

Then(/^I should see guest menu$/) do
  expect(page).to have_selector('ul.navbar-nav')
  expect(page).to have_link('Teacher Registration', href: new_teacher_path)
  expect(page).to have_link('Student Registration', href: new_student_path)
  expect(page).to have_link('Login', href: new_user_session_path)
end

Given(/^I am a "(.*?)" teacher$/) do |teacher_email|  
  
  name = "John Doe"
  qualification = "Masters"
  experience = "3 Years"
  password = 'test12345678'
  
  Teacher.create(:name => name, :qualification => qualification, :experience => experience, :user_attributes => {:email => teacher_email, :password => password, :password_confirmation => password})

  visit new_user_session_path
  fill_in "user_email", :with => teacher_email
  fill_in "user_password", :with => password
  click_button "Log in"  
end

Then(/^I should see teacher menu$/) do
  expect(page).to have_link("Teachers", href: teachers_path)
  expect(page).to have_link("Logout", href: destroy_user_session_path)
end

Given(/^I am a "(.*?)" student$/) do |student_email|
  
  name = "John Smith"
  cl = 3
  mobile = 1234567890
  password = 'test12345678'
  
  Student.create(:name => name, :cl => cl, :mobile => mobile, :user_attributes => {:email => student_email, :password => password, :password_confirmation => password})

  visit new_user_session_path
  fill_in "user_email", :with => student_email
  fill_in "user_password", :with => password
  click_button "Log in" 
  
end

Then(/^I should see student menu$/) do
  expect(page).to have_link("Students", href: students_path)
  expect(page).to have_link("Logout", href: destroy_user_session_path)
end