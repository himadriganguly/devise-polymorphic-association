require 'rails_helper'

RSpec.describe "teachers/new", :type => :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :name => "MyString",
      :qualification => "MyString",
      :experience => "MyString",
      :user_attributes => {:email=>"example@example.com", :password=>"pass12345678"}
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_qualification[name=?]", "teacher[qualification]"

      assert_select "input#teacher_experience[name=?]", "teacher[experience]"
      
      assert_select "input#teacher_user_attributes_email[name=?]", "teacher[user_attributes][email]"
      
      assert_select "input#teacher_user_attributes_password[name=?]", "teacher[user_attributes][password]"
      
      assert_select "input#teacher_user_attributes_password_confirmation[name=?]", "teacher[user_attributes][password_confirmation]"
      
    end
  end
end
