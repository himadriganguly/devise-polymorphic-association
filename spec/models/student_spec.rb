require 'rails_helper'

RSpec.describe Student, :type => :model do
  
  let(:student) {Student.new}
  
  context "attributes" do 
  
    it "has name" do
      student.name = "John Doe"
      expect(student.name).to eq("John Doe")
    end
    
    it "has class" do
      student.cl = 3
      expect(student.cl).to eq(3)
    end
    
    it "has mobile" do
      student.mobile = 1234567890
      expect(student.mobile).to eq(1234567890)
    end
    
    it "has email" do
      student.build_user
      student.user.email = "example@example.com"
      expect(student.user.email).to eq("example@example.com")
    end
    
    it "has password" do
      student.build_user
      student.user.password = "pass"
      expect(student.user.password).to eq("pass")
    end
    
  end
  
  describe "validations" do    
    
    let(:student_attributes) {
      {:name => "John Smith", :cl => 3, :mobile => 1234567890}
    }
    
    it "is invalid when name is empty" do
      student_attributes[:name] = nil
      student = Student.new student_attributes
      expect(student.valid?).to be false
    end
    
    it "is invalid when class is empty" do
      student_attributes[:cl] = nil
      student = Student.new student_attributes
      expect(student.valid?).to be false
    end
    
    it "is invalid when mobile is empty" do
      student_attributes[:mobile] = nil
      student = Student.new student_attributes
      expect(student.valid?).to be false
    end
    
  end
    
end
