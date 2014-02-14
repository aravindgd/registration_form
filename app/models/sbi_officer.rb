class SbiOfficer < ActiveRecord::Base
  belongs_to :student_cat_reg_form
  mount_uploader :sbi_id_proof, DocumentUploader
end
