class PreSchool < ActiveRecord::Base
  mount_uploader :copy_of_fee_chalan, DocumentUploader
  belongs_to :student_cat_reg_form
end
