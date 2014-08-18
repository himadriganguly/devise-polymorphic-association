require 'rails_helper'

RSpec.describe User, :type => :model do
  
  context "attributes" do
    
    let(:user) { User.new }
    
    it "has email" do
      user.email = "email@example.com"
      expect(user.email).to eq("email@example.com")
    end
    
    it "has password" do
      user.password = "pass12345678"
      expect(user.password).to eq("pass12345678")
    end
    
    it "has password confirmation" do
      user.password_confirmation = "pass"
      expect(user.password_confirmation).to eq("pass")
    end
    
    it "has meta_id" do
      user.meta_id = 1
      expect(user.meta_id).to eq(1)
    end
    
    it "has meta_type" do
      user.meta_type = "Teacher"
      expect(user.meta_type).to eq("Teacher")
    end
    
  end
 
end
