class RegistrationFormPdf < Prawn::Document
	def initialize(registration_form_obj)
		super(top_margin: 50,left_margin:30)
		@registration_form = registration_form_obj
		print_data
	end

	def print_data
		# text 'ttest'
		table print_table
	end

	def print_data

          text "Application Number :"+@registration_form.application_number,:align => :right, :position =>:top
          
          text " "
          text "S.B.O.A ", :align => :center, :size => 25,:style => :bold
          text "SCHOOL JUNIOR COLLEGE,CHENNAI-600101 ", :align => :center, :size => 15,:style => :bold
          text " "
          text "Eligibility:Children who are born between 30 November 2010 and 30 November 2011."
          text " "
          
          text "List of supporting Documents to be attached with the registration form at the time of submission.",:style => :bold
          text " "
          text "1. Attested Photocopy of Birth Certificate of the child", :size => 9
         
          text "2. Proof of Residence (Photo copy of Ration Card / EB Card / Passport / Voter Id / Gas Bill / Aadhar Card / Telephone Bill only)", :size => 9
		  text "3. Proof of Sibling - Copy of id card / fee challan", :size => 9
		  text "4. For all categories except 'OC', Attested Community Ceritificate has to be enclosed", :size => 9
		  text "5. Medical Ceritificate of the Child(for children with special needs)", :size => 9
		  text "6. Proof if Income", :size => 9
            text "7. Proof of Alumni - copy of 12th Marksheet",:size => 9
		  text "  "
          text "Student Details",:style => :bold
          text "  "
          text "Name of the student :"+@registration_form.name_of_student, :size => 9
          text "  "
          text "Date of Birth :"+@registration_form.date_of_birth, :size => 9
          text "  "
          text "Gender :"+if @registration_form.gender
          	"Male"
          else
          	"Female"
          end, :size => 9

          text "  "
          text "Father's Name / Guardian's Name :"+@registration_form.father_data.name
          text "  "
          text "Mother Name :"+@registration_form.mother_data.name
          text "  "
          text "Nationality :"+@registration_form.nationality
          text "  "
          text "Religion :"+@registration_form.religion
          text "  "
          text "Caste :"+@registration_form.caste
          text "  "
          text "Community Category  :"+@registration_form.community_category
          text "  "
          text "Student Category    :"+@registration_form.student_category.name
          case @registration_form.student_category.id
               when 2
                    text "Membership Number :"+@registration_form.student_cat_reg_form.sbi_grand_parent.membership_number
                    text "Grandfather Name :"+@registration_form.student_cat_reg_form.sbi_grand_parent.grandfather_name
                    text "Branch :"+@registration_form.student_cat_reg_form.sbi_grand_parent.branch
               when 3
                    text "Membership Number :"+@registration_form.student_cat_reg_form.sbi_officer.membership_number
                    text "Branch :"+@registration_form.student_cat_reg_form.sbi_officer.branch
               when 5
                    text "Year of Passing :"+@registration_form.student_cat_reg_form.alumni.year_of_passing
               when 6
                    text "Branch :"+@registration_form.student_cat_reg_form.staff_child.branch
               when 7
                    text "Tie-up :"+@registration_form.student_cat_reg_form.tie_up.rbi_or_sbi_proof
          end
          text "  "

          if @registration_form.sibling
          text "Sibling : Yes"
              text "Name :"+@registration_form.sibling_existing_parent.name
              text "Class of Sibling "+@registration_form.sibling_existing_parent.class_of_sibling
              text "Section "+@registration_form.sibling_existing_parent.sec
              text "Admission Number :"+@registration_form.sibling_existing_parent.admission_num
          else
          text "Sibling : No"
          end
          if @registration_form.child_special
          text "Child with special needs : Yes"
          else
          text "Child with special needs : No"
          end
          
          text "Communication Details",:style => :bold
          text " "
          text "Locality :"+@registration_form.locality
          text "  "
          text "Residental Address1 :"+@registration_form.residental_address
          text "Address2 :"+@registration_form.residental_address2
          text "  "
          text "Pincode :"+@registration_form.pincode
          text "  "
          text "Mobile Number :"+@registration_form.mobile_number
          text "  "
          text "Landline Number :"+@registration_form.landline_number
          text "  "
          text "Email :"+@registration_form.email
          text " "
          text "Parent's / Guardian Occupation",:style => :bold
          text "a) Father's / Guardian Occupation",:style => :bold
          text " "
          if @registration_form.father_data.qualification
          text "Father's Qualification :" + @registration_form.father_data.qualification
          else
          text "Father's Qualification :"
          end
          text " "
          if @registration_form.father_data.annual_income
          text "Father's Annual Income :"+@registration_form.father_data.annual_income
          else
          text "Father's Annual Income :"
          end
          text " "
          if @registration_form.father_data.occupation_designation
          text "Father's Occupation / Designation :"+@registration_form.father_data.occupation_designation
          else
          text "Father's Occupation / Designation :"
          end
          text " "
          if @registration_form.father_data.organisation_name
          text "Father's Organistaion Name :"+@registration_form.father_data.organisation_name
          else
          text "Father's Organistaion Name :"
          end 
          text " "
          if @registration_form.father_data.organisation_address
          text "Father's Organisation Address :"+@registration_form.father_data.organisation_address
          else
          text "Father's Organisation Address :"
          end
          text " "
          if @registration_form.father_data.organisation_type
          text "Father's Organisation Type :"+@registration_form.father_data.organisation_type
          else
          text "Father's Organisation Type :"
          end
          text " "
          text "b) Mother's Occupation",:style => :bold
          text " "
          if @registration_form.mother_data.qualification
          text "Mother's Qualification :"+@registration_form.mother_data.qualification
          else
          text "Mother's Qualification :"
          end 
          text " "
          if @registration_form.mother_data.annual_income
          text "Mother's Annual Income :"+@registration_form.mother_data.annual_income
          else
          text "Mother's Annual Income :"
          end 
          text " "
          if @registration_form.mother_data.occupation_designation
          text "Mother's Occupation / Designation :"+@registration_form.mother_data.occupation_designation
          else
          text "Mother's Occupation / Designation :"
          end 
          text " "
          if@registration_form.mother_data.organisation_name
          text "Mother's Organistaion Name :"+@registration_form.mother_data.organisation_name
          else
          text "Mother's Organistaion Name :" 
          end
          text " "
          if@registration_form.mother_data.organisation_address
          text "Mother's Organisation Address :"+@registration_form.mother_data.organisation_address
          else
          text "Mother's Organisation Address :" 
          end
          text " "
          if@registration_form.mother_data.organisation_type
          text "Mother's Organisation Type :"+@registration_form.mother_data.organisation_type
          else
          text "Mother's Organisation Type :"
          end
          text " "
          
          text " "
          text " "
          text " "
          text "DECLARATION BY THE PARENT",:style => :bold, :align=> :center
          text " "
          text " I/We hereby certify that the above information provided by me/us is correct and I/we understand that if the information found to be incorrect or false, the application shall be automatically rejected from registration process without any correspondence in this regard. I/We understand that short listing of this registration form does not guarantee admission to my ward. I/We accept the process of admission undertaken by the school and I/we will abide by the decision taken by the school authorities."
          text " "
          text " "
          text " "
          text "Signature of the Mother / Guardian's ",:style => :bold 
          text "Signature of the Father / Guardian's ",:style => :bold,:align=> :right 
          text "Name :"+@registration_form.mother_data.name
          text "Name :"+@registration_form.father_data.name,:align=> :right
          text " "
          text " "
          text "Submission Date :"
			

  		# end
 	end
end