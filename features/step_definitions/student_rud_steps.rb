When(/^I go to student url$/) do
  visit students_path
end

Then(/^I should see student table$/) do
  expect(page).to have_content("student@example.com")
end

When(/^I click on student "(.*?)" show$/) do |show_link|
  click_on show_link
end

Then(/^I should see student details$/) do
  expect(page).to have_content("student@example.com")
end

When(/^I go to "(.*?)" student edit page$/) do |student_email|
  student_id = User.find_by_email(student_email).meta_id
  visit edit_student_path(student_id)  
end

When(/^I change class to "(.*?)"$/) do |cl|
  fill_in "student_cl", with: cl
  fill_in "student_user_attributes_password", with: "test12345678"
  fill_in "student_user_attributes_password_confirmation", with: "test12345678"
  click_button "Submit"
end