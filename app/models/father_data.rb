class FatherData < ActiveRecord::Base
	belongs_to :registration_form
  mount_uploader :qualification_proof, DocumentUploader
end