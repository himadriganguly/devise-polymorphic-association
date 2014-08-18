class Teacher < ActiveRecord::Base
  has_one :user, as: :meta, dependent: :destroy
  accepts_nested_attributes_for :user
  
  validates :name, presence: true
  validates :qualification, presence: true
  validates :experience, presence: true
end
