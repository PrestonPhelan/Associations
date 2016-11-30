class Course < ActiveRecord::Base

  has_many :enrolled_students,
  through: :enrollments,
  source: :student

  has_many :enrollments,
  primary_key: :id,
  foreign_key: :course_id,
  class_name: :Enrollment

  has_many :prerequisites,
  primary_key: :prereq_id,
  foreign_key: :id,
  class_name: :Course

  ##belongs_to :prereq,
  ##primary_key: :id,
  ##foreign_key: :prereq_id,
  ##class_name: :Course

  #Look in Course for "foreign_key" that matches our "primary_key"

  belongs_to :instructor,
  primary_key: :id,
  foreign_key: :instructor_id,
  class_name: :User

  #Look in User for "primary_key" that mathes our "foreign_key"
end
