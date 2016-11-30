class Course < ActiveRecord::Base

  has_many :enrolled_students,
  through: :enrollments,
  source: :student

  has_many :enrollments,
  primary_key: :id,
  foreign_key: :course_id,
  class_name: :Enrollment
end
