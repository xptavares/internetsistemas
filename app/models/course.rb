class Course < ActiveRecord::Base
  has_many :classrooms, dependent: :destroy
  has_many :students, through: :classrooms
end
