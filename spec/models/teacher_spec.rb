require 'rails_helper'

RSpec.describe Teacher, :type => :model do
  
  let(:teacher) {Teacher.new}
  
  context "attributes" do 
  
    it "has name" do
      teacher.name = "John Doe"
      expect(teacher.name).to eq("John Doe")
    end
    
    it "has qualification" do
      teacher.qualification = "Phd"
      expect(teacher.qualification).to eq("Phd")
    end
    
    it "has experience" do
      teacher.experience = "3 years"
      expect(teacher.experience).to eq("3 years")
    end
    
    it "has email" do
      teacher.build_user
      teacher.user.email = "example@example.com"
      expect(teacher.user.email).to eq("example@example.com")
    end
    
    it "has password" do
      teacher.build_user
      teacher.user.password = "pass"
      expect(teacher.user.password).to eq("pass")
    end
    
  end  
  
  describe "validations" do    
    
    let(:teacher_attributes) {
      {:name => "John Doe", :qualification => "Phd", :experience => "3 years"}
    }
    
    it "is invalid when name is empty" do
      teacher_attributes[:name] = nil
      teacher = Teacher.new teacher_attributes
      expect(teacher.valid?).to be false
    end
    
    it "is invalid when qualification is empty" do
      teacher_attributes[:qualification] = nil
      teacher = Teacher.new teacher_attributes
      expect(teacher.valid?).to be false
    end
    
    it "is invalid when experience is empty" do
      teacher_attributes[:experience] = nil
      teacher = Teacher.new teacher_attributes
      expect(teacher.valid?).to be false
    end
      
  end
  
end
