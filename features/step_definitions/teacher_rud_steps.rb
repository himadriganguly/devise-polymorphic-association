When(/^I go to teachers url$/) do
  visit teachers_path
end

Then(/^I should see teachers table$/) do
  expect(page).to have_content("example@example.com")
end

When(/^I click on teacher "(.*?)" show$/) do |show_link|
  click_on show_link
end

Then(/^I should see teacher details$/) do
  expect(page).to have_content("example@example.com")
end

When(/^I go to "(.*?)" teacher edit page$/) do |teacher_email|
  teacher_id = User.find_by_email(teacher_email).meta_id
  visit edit_teacher_path(teacher_id)  
end

When(/^I change experience to "(.*?)"$/) do |exp_yrs|
  fill_in "teacher_experience", with: exp_yrs
  fill_in "teacher_user_attributes_password", with: "test12345678"
  fill_in "teacher_user_attributes_password_confirmation", with: "test12345678"
  click_button "Submit"
end

Then(/^I should receive "(.*?)"$/) do |update_msg|
  expect(page).to have_content(update_msg)
end

When(/^I click on "(.*?)" destroy$/) do |delete_link|
  click_on delete_link
end

Then(/^"(.*?)" should not exist in database$/) do |email|
  expect(User.find_by_email(email)).to be_nil
end
