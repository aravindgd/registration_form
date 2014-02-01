class RegistrationForm < ActiveRecord::Base
  has_many :student_category
  has_one :sibling_existing_parent
  has_one :father_data
  has_one :mother_data
  accepts_nested_attributes_for :student_category
  accepts_nested_attributes_for :sibling_existing_parent
  accepts_nested_attributes_for :father_data
  accepts_nested_attributes_for :mother_data
  mount_uploader :date_of_birth_proof, DocumentUploader
  mount_uploader :community_category_proof, DocumentUploader
  mount_uploader :residental_address_proof, DocumentUploader
  mount_uploader :child_with_special_needs_proof, DocumentUploader
end
