class Student < ActiveRecord::Base
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  
  validates :name, presence: true
  validates :cl, presence: true
  validates :mobile, presence: true
end
