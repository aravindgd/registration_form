class RegistrationForm < ActiveRecord::Base
  
  has_one :sibling_existing_parent
  has_one :father_data
  has_one :mother_data
  has_one :student_categories
  attr_accessor :staff_child, :sibling_existing_parents,:father_datas, :mother_datas
  
  accepts_nested_attributes_for :sibling_existing_parent
  accepts_nested_attributes_for :father_data
  accepts_nested_attributes_for :mother_data
  
  mount_uploader :date_of_birth_proof, DocumentUploader
  mount_uploader :community_category_proof, DocumentUploader
  mount_uploader :residental_address_proof, DocumentUploader
  mount_uploader :child_with_special_needs_proof, DocumentUploader
  mount_uploader :student_category_proof, DocumentUploader
  mount_uploader :rbi_proof, DocumentUploader
  mount_uploader :sail_proof, DocumentUploader
  after_save :update_application_number

  def update_application_number
    self.application_number = self.id+1000
  end

end