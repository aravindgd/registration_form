class StudentCategory < ActiveRecord::Base
	has_one :student_cat_reg_form
	has_one :registration_form, through: :student_cat_reg_form
end
