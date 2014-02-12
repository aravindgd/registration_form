class StudentCatRegForm < ActiveRecord::Base
	has_one :sbi_officer
	has_one :sbi_grand_parent
	has_one :pre_school
	has_one :alumni
	has_one :staff_child
	has_one :tie_up
  belongs_to :student_category
  belongs_to :registration_form
end
