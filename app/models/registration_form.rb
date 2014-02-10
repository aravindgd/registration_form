class RegistrationForm < ActiveRecord::Base
  
  has_one :sibling_existing_parent
  has_one :father_data
  has_one :mother_data
  has_one :student_cat_reg_form
  has_one :student_category, through: :student_cat_reg_form
  attr_accessor :staff_child, :pre_school_proof,:grand_membership_no, :grandfather_name,:grand_branch,:grand_service_retirement,:alumni_year_of_passing,:alumni_marksheet_proof,:sbi_officer_membership_no,:sbi_officer_branch
  
  accepts_nested_attributes_for :sibling_existing_parent
  accepts_nested_attributes_for :father_data
  accepts_nested_attributes_for :mother_data
  accepts_nested_attributes_for :student_cat_reg_form
  
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