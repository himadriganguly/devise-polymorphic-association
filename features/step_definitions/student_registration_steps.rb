When(/^I fill the student register form with valid data$/) do
  visit new_student_path
  fill_in "student_name", with: "John Doe"
  fill_in "student_cl", with: 3
  fill_in "student_mobile", with: 1234567890
  fill_in "student_user_attributes_email", with: "student@example.com"
  fill_in "student_user_attributes_password", with: "test12345678"
  fill_in "student_user_attributes_password_confirmation", with: "test12345678"
  click_button "Submit"
end

Then(/^I should be registered student in application$/) do
  expect(Student.find(1)).not_to be_nil
  expect(User.find_by_email("student@example.com")).not_to be_nil
end

Then(/^I should receive "(.*?)" for student registration$/) do |msg|
  expect(page).to have_content(msg)
end