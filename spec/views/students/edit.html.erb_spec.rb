require 'rails_helper'

RSpec.describe "students/edit", :type => :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :cl => 1,
      :mobile => 1,
      :user_attributes => {:email=>"example@example.com", :password=>"pass12345678"}
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_cl[name=?]", "student[cl]"

      assert_select "input#student_mobile[name=?]", "student[mobile]"
      
      assert_select "input#student_user_attributes_email[name=?]", "student[user_attributes][email]"
      
      assert_select "input#student_user_attributes_password[name=?]", "student[user_attributes][password]"
      
      assert_select "input#student_user_attributes_password_confirmation[name=?]", "student[user_attributes][password_confirmation]"
    end
  end
end
