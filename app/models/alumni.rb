class Alumni < ActiveRecord::Base
  mount_uploader :mark_sheet_proof, DocumentUploader
  belongs_to :student_cat_reg_form
end
