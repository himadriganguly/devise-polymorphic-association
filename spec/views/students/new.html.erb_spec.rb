require 'rails_helper'

RSpec.describe "students/new", :type => :view do
  before(:each) do
    assign(:student, Student.new(
      :name => "MyString",
      :cl => 1,
      :mobile => 1,
      :user_attributes => {:email=>"example@example.com", :password=>"pass12345678"}
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_cl[name=?]", "student[cl]"

      assert_select "input#student_mobile[name=?]", "student[mobile]"
      
      assert_select "input#student_user_attributes_email[name=?]", "student[user_attributes][email]"
      
      assert_select "input#student_user_attributes_password[name=?]", "student[user_attributes][password]"
      
      assert_select "input#student_user_attributes_password_confirmation[name=?]", "student[user_attributes][password_confirmation]"
    end
  end
end
