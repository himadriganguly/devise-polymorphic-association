require 'rails_helper'

RSpec.describe "students/index", :type => :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :cl => 1,
        :mobile => 2,
        :user_attributes=>{:email=>"example1@example.com",:password=>"test12345678"}
      ),
      Student.create!(
        :name => "Name",        
        :cl => 1,
        :mobile => 2,
        :user_attributes=>{:email=>"example2@example.com",:password=>"test12345678"}
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "example1@example.com".to_s, :count => 1, :text => "example2@example.com".to_s, :count => 1
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
