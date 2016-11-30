class User < ActiveRecord::Base
  ##Validations

  ##Associations
  has_many :enrolled_courses,
  through: :enrollments,
  source: :course

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Enrollment
end
