class Student < ActiveRecord::Base
  has_many :classrooms, dependent: :destroy
  has_many :courses, through: :classrooms
end
