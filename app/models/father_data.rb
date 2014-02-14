class FatherData < ActiveRecord::Base
	belongs_to :registration_form
  mount_uploader :qualification_proof, DocumentUploader
  mount_uploader :income_proof, DocumentUploader
end