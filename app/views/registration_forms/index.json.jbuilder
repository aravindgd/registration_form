json.array!(@registration_forms) do |registration_form|
  json.extract! registration_form, :id, :name_of_student, :date_of_birth, :gender, :nationality, :caste, :community_category, :student_category_id, :sibling_existing_parent_id, :child_with_special_needs, :locality, :residental_address, :pincode, :landmark, :mobile_number, :landline_number, :email, :father_data_id, :mother_data, :application_number
  json.url registration_form_url(registration_form, format: :json)
end
