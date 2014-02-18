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

          text "Note: ", :size => 10,:style => :bold
          text "Enclose the printed original registration form with required documents in a sealed envelope superscribed with registration number on the envelope and drop it in the box provided at the school office on or before 24/2/2014.", :size => 9

          text " "
          text "Application Number :"+@registration_form.application_number,:align => :right, :position =>:top,:size => 12
          
          text " "
          
          text "SBOA SCHOOL AND JUNIOR COLLEGE,CHENNAI-600101 ", :align => :center, :size => 14,:style => :bold
          text "Registration form for LKG Admission 2014-2015", :align => :center, :size => 13,:style => :bold
          text " "
          text "Eligibility:Children who are born between 01 December 2009 and 30 November 2010.",:size => 12
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
          text "Student Details",:style => :bold,:position=> :absolute,:left=>40
          text "  "
          text "Name of the student :"+@registration_form.name_of_student, :size => 9
          text "Date of Birth :"+@registration_form.date_of_birth, :size => 9
          text "Gender :"+if @registration_form.gender
          	"Male"
          else
          	"Female"
          end, :size => 9

          text "Father's Name / Guardian's Name :"+@registration_form.father_data.name,:size => 9
          text "Mother Name :"+@registration_form.mother_data.name,:size => 9
          text "Nationality :"+@registration_form.nationality,:size => 9
          text "Religion :"+@registration_form.religion,:size => 9
          text "Caste :"+@registration_form.caste,:size => 9
          text "Community Category  :"+@registration_form.community_category,:size => 9
          text "Student Category    :"+@registration_form.student_category.name,:size => 9
          case @registration_form.student_category.id
               when 2
                    text "Membership Number :"+@registration_form.student_cat_reg_form.sbi_grand_parent.membership_number,:size => 9
                    text "Grandfather Name :"+@registration_form.student_cat_reg_form.sbi_grand_parent.grandfather_name,:size => 9
                    text "Branch :"+@registration_form.student_cat_reg_form.sbi_grand_parent.branch,:size => 9
               when 3
                    text "Membership Number :"+@registration_form.student_cat_reg_form.sbi_officer.membership_number,:size => 9
                    text "Branch :"+@registration_form.student_cat_reg_form.sbi_officer.branch,:size => 9
               when 4
                    text "Admission Number :"+@registration_form.student_cat_reg_form.pre_school.admission_number,:size => 9
               when 5
                    text "Year of Passing :"+@registration_form.student_cat_reg_form.alumni.year_of_passing,:size => 9
                    text "Category:"+@registration_form.student_cat_reg_form.alumni.alumni_category,:size => 9
               when 6
                    text "Branch :"+@registration_form.student_cat_reg_form.staff_child.branch,:size => 9
          end

          if @registration_form.sibling
          text "Sibling : Yes",:size => 9
              text "Name :"+@registration_form.sibling_existing_parent.name,:size => 9
              text "Class:"+@registration_form.sibling_existing_parent.class_of_sibling,:size => 9
              text "Section: "+@registration_form.sibling_existing_parent.sec,:size => 9
              text "Admission Number :"+@registration_form.sibling_existing_parent.admission_num,:size => 9
          else
          text "Sibling : No",:size => 9
          end
          if @registration_form.child_special
          text "Child with special needs : Yes",:size => 9
          else
          text "Child with special needs : No",:size => 9
          end
          text " "
          text "Communication Details",:style => :bold
          text " "
          text "Locality :"+@registration_form.locality,:size => 9
          text "Residental Address1 :"+@registration_form.residental_address,:size => 9
          text "Residental Address2 :"+@registration_form.residental_address2,:size => 9
          text "Pincode :"+@registration_form.pincode,:size => 9
          text "Mobile Number :"+@registration_form.mobile_number,:size => 9
          text "Landline Number :"+@registration_form.landline_number,:size => 9
          text "Email :"+@registration_form.email,:size => 9
          text " "
          text " "
          text "Parents Details",:style => :bold
          text "a) Father's / Guardian's Occupation",:style => :bold
          text " "
          if @registration_form.father_data.qualification
          text "Father's Qualification :" + @registration_form.father_data.qualification,:size => 9
          else
          text "Father's Qualification :"
          end
          if @registration_form.father_data.annual_income
          text "Father's Annual Income :"+@registration_form.father_data.annual_income,:size => 9
          else
          text "Father's Annual Income :"
          end
          if @registration_form.father_data.occupation_designation
          text "Father's Occupation / Designation :"+@registration_form.father_data.occupation_designation,:size => 9
          else
          text "Father's Occupation / Designation :"
          end
          if @registration_form.father_data.organisation_name
          text "Father's Organistaion Name :"+@registration_form.father_data.organisation_name,:size => 9
          else
          text "Father's Organistaion Name :"
          end 
          if @registration_form.father_data.organisation_address
          text "Father's Organisation Address :"+@registration_form.father_data.organisation_address,:size => 9
          else
          text "Father's Organisation Address :"
          end
          if @registration_form.father_data.organisation_address2
          text "Father's Organisation Address :"+@registration_form.father_data.organisation_address2,:size => 9
          else
          text "Father's Organisation Address :"
          end
          if @registration_form.father_data.organisation_type
          text "Father's Organisation Type :"+@registration_form.father_data.organisation_type,:size => 9
          else
          text "Father's Organisation Type :"
          end
          text " "
          text "b) Mother's Occupation",:style => :bold
          text " "
          if @registration_form.mother_data.qualification
          text "Mother's Qualification :"+@registration_form.mother_data.qualification,:size => 9
          else
          text "Mother's Qualification :"
          end
          # if @registration_form.mother_data.professional
          # text "Mother's Profession: Home Maker"
          # else
          # text "Mother's Profession: Others"
          # end
          if @registration_form.mother_data.annual_income
          text "Mother's Annual Income :"+@registration_form.mother_data.annual_income,:size => 9
          else
          text "Mother's Annual Income :"
          end 
          if @registration_form.mother_data.occupation_designation
          text "Mother's Occupation / Designation :"+@registration_form.mother_data.occupation_designation,:size => 9
          else
          text "Mother's Occupation / Designation :"
          end 
          if@registration_form.mother_data.organisation_name
          text "Mother's Organistaion Name :"+@registration_form.mother_data.organisation_name,:size => 9
          else
          text "Mother's Organistaion Name :" 
          end
          if@registration_form.mother_data.organisation_address
          text "Mother's Organisation Address :"+@registration_form.mother_data.organisation_address,:size => 9
          else
          text "Mother's Organisation Address :" 
          end
          if@registration_form.mother_data.organisation_address2
          text "Mother's Organisation Address :"+@registration_form.mother_data.organisation_address2,:size => 9
          else
          text "Mother's Organisation Address :" 
          end
          if@registration_form.mother_data.organisation_type
          text "Mother's Organisation Type :"+@registration_form.mother_data.organisation_type,:size => 9
          else
          text "Mother's Organisation Type :"
          end

          text " "
          text " "
          text "DECLARATION BY THE PARENT",:style => :bold, :align=> :center
          text " "
          text " I/We hereby certify that the above information provided by me/us is correct and I/we understand that if the information found to be incorrect or false, the application shall be automatically rejected from registration process without any correspondence in this regard. I/We understand that short listing of this registration form does not guarantee admission to my ward. I/We accept the process of admission undertaken by the school and I/we will abide by the decision taken by the school authorities.", :size => 9
          text " "
          text " "
          text " "
          text "Signature of the Mother / Guardian's ",:style => :bold , :size => 9
          text "Signature of the Father / Guardian's ",:style => :bold,:align=> :right, :size => 9 
          text "Name :"+@registration_form.mother_data.name, :size => 9
          text "Name :"+@registration_form.father_data.name,:align=> :right, :size => 9
          text " "
          text " "
          text "Submission Date :", :size => 9
			

  		# end
 	end
end