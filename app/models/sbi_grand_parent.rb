class SbiGrandParent < ActiveRecord::Base
	mount_uploader :service_retirement, DocumentUploader
  belongs_to :student_cat_reg_form
end
