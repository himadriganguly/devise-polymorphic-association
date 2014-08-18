require 'rails_helper'

RSpec.describe "teachers/index", :type => :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :name => "Name",
        :qualification => "Qualification",
        :experience => "Experience",
        :user_attributes=>{:email=>"example1@example.com",:password=>"test12345678"}
      ),
      Teacher.create!(
        :name => "Name",
        :qualification => "Qualification",
        :experience => "Experience",
        :user_attributes=>{:email=>"example2@example.com",:password=>"test12345678"}
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "example1@example.com".to_s, :count => 1, :text => "example2@example.com".to_s, :count => 1
    assert_select "tr>td", :text => "Qualification".to_s, :count => 2
    assert_select "tr>td", :text => "Experience".to_s, :count => 2
  end
end
