require 'rails_helper'

RSpec.describe "students/show", :type => :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :cl => 1,
      :mobile => 2,
      :user_attributes=>{:email=>"example@example.com",:password=>"test12345678",:password_confirmation=>"test12345678"}
    ))
  end

  it "renders attributes in <table>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
