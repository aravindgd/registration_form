class RegistrationForm < ActiveRecord::Base
  
  has_one :sibling_existing_parent
  has_one :father_data
  has_one :mother_data
  has_one :student_cat_reg_form, dependent: :destroy
  has_one :student_category, through: :student_cat_reg_form
  attr_accessor :staff_child, :admission_number,:grand_membership_no, :grandfather_name,:grand_branch,:grand_service_retirement,:alumni_year_of_passing,:alumni_marksheet_proof,:sbi_officer_membership_no,:sbi_officer_branch,:alumni_category,:sbi_id_proof,:rbi_proof
  
  accepts_nested_attributes_for :sibling_existing_parent
  accepts_nested_attributes_for :father_data
  accepts_nested_attributes_for :mother_data
  accepts_nested_attributes_for :student_cat_reg_form
  
  mount_uploader :date_of_birth_proof, DocumentUploader
  mount_uploader :community_category_proof, DocumentUploader
  mount_uploader :residental_address_proof, DocumentUploader
  mount_uploader :child_with_special_needs_proof, DocumentUploader
  mount_uploader :student_category_proof, DocumentUploader
  
  validates :name_of_student, :nationality,:locality, :religion,:caste,:community_category,presence: true
  validates :date_of_birth, presence: true
  validates :mobile_number, numericality: {only_integer: true},:length => { :minimum => 10, :maximum => 10 }
  validates :email, :email => {:strict_mode => true}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
 # validates :date_of_birth, uniqueness: true
  validates :date_of_birth, uniqueness: { scope: :name_of_student, case_sensitive: false,
    message: "Already registered with these details" }
  
  def self.search(search)
    if search.empty?
      []
    elsif search
      where('mobile_number LIKE ?', "%#{search}%")
    else
      []
    end
  end
end