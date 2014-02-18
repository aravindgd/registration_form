class TieUp < ActiveRecord::Base
  belongs_to :student_cat_reg_form
  mount_uploader :rbi_proof, DocumentUploader
end
