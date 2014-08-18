require 'rails_helper'

RSpec.describe "teachers/show", :type => :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :name => "Name",
      :qualification => "Qualification",
      :experience => "Experience",
      :user_attributes=>{:email=>"example@example.com",:password=>"test12345678",:password_confirmation=>"test12345678"}
    ))
  end

  it "renders attributes in <table>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Qualification/)
    expect(rendered).to match(/Experience/)
  end
end
