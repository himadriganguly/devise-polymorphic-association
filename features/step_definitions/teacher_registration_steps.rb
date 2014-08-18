When(/^I fill the teacher register form with valid data$/) do
  visit new_teacher_path
  fill_in "teacher_name", with: "John Doe"
  fill_in "teacher_qualification", with: "Masters"
  fill_in "teacher_experience", with: "3 Years"
  fill_in "teacher_user_attributes_email", with: "example@example.com"
  fill_in "teacher_user_attributes_password", with: "test12345678"
  fill_in "teacher_user_attributes_password_confirmation", with: "test12345678"
  click_button "Submit"
end

Then(/^I should be registered teacher in application$/) do
  expect(Teacher.find(1)).not_to be_nil
  expect(User.find_by_email("example@example.com")).not_to be_nil
end

Then(/^I should receive "(.*?)" for teacher registration$/) do |msg|
  expect(page).to have_content(msg)
  #expect(flash[:notice]).to have_content(msg)
end