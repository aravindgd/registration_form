class StudentCategories < ActiveRecord::Base
	belongs_to :registration_form
	mount_uploader :marksheet_proof, DocumentUploader
	mount_uploader :service_retirement, DocumentUploader
end