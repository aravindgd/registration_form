class RegistrationForm < ActiveRecord::Base
  belongs_to :student_category
  belongs_to :sibling_existing_parent
  belongs_to :father_data
end
