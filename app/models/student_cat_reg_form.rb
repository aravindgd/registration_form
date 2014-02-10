class StudentCatRegForm < ActiveRecord::Base
  belongs_to :student_category
  belongs_to :registration_form
end
