class RegistrationFormsController < ApplicationController
  before_action :set_registration_form, only: [:show, :edit, :update, :destroy]

  # GET /registration_forms
  # GET /registration_forms.json
  def index
    @registration_forms = RegistrationForm.all
      format.pdf { 
        html = render_to_string(:action => "show.html.erb") 
        kit = PDFKit.new(html) 
        kit.stylesheets << "#{Rails.root}/public/stylesheets/print.css" 
        send_data kit.to_pdf, :filename => "registration_forms.pdf", :type => 'application/pdf' 
      }

  end

  # GET /registration_forms/1
  # GET /registration_forms/1.json
  def show
    student_category_id = @registration_form.student_category.id
    case student_category_id 
    when 1
      
    when 2

    when 3
      
    when 4
      
    when 5
      
    when 6
      
    end
  end
  

  # GET /registration_forms/new
  def new
    @registration_form = RegistrationForm.new
  end

  # GET /registration_forms/1/edit
  def edit
  end

  # POST /registration_forms
  # POST /registration_forms.json
  def create
    @registration_form = RegistrationForm.create(name_of_student: params[:registration_form][:name_of_student], date_of_birth: params[:registration_form][:date_of_birth], gender: params[:registration_form][:gender],nationality:  params[:registration_form][:nationality],caste: params[:registration_form][:caste],community_category: params[:registration_form][:community_category],child_with_special_needs: params[:registration_form][:child_with_special_needs],locality: params[:registration_form][:locality], kilometers: params[:registration_form][:kilometers], residental_address: params[:registration_form][:residental_address],residental_address2: params[:registration_form][:residental_address2],pincode: params[:registration_form][:pincode],landmark: params[:registration_form][:landmark],mobile_number: params[:registration_form][:mobile_number],landline_number: params[:registration_form][:landline_number],email: params[:registration_form][:email],tie_up: params[:registration_form][:tie_up],rbi_proof: params[:registration_form][:rbi_proof],sail_proof: params[:registration_form][:sail_proof],reference: params[:registration_form][:reference],remarks: params[:registration_form][:remarks])
    @registration_form.date_of_birth_proof = params[:registration_form][:date_of_birth_proof] 
    @registration_form.build_student_cat_reg_form(student_category_id: params[:registration_form][:student_category].to_i)
    # nil.test!
    student_category_id = params[:registration_form][:student_category].to_i
    case student_category_id        
    when 2
      SbiGrandParent.create(membership_number: params[:registration_form][:grand_membership_no],grandfather_name: params[:registration_form][:grandfather_name],branch: params[:registration_form][:grand_branch],service_retirement: params[:registration_form][:grand_service_retirement],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
    when 3
      SbiOfficer.create(membership_number: params[:registration_form][:sbi_officer_membership_no],branch: params[:registration_form][:sbi_officer_branch],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
    when 4
      PreSchool.create(copy_of_fee_chalan: params[:registration_form][:pre_school_proof],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
    when 5
      Alumni.create(year_of_passing:params[:registration_form][:alumni_year_of_passing],marksheet_proof: params[:registration_form][:alumni_marksheet_proof],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
    when 6
      StaffChild.create(branch: params[:registration_form][:staff_child],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
    end
    @registration_form.build_sibling_existing_parent(name: params[:registration_form][:sibling_existing_parents][:name], class_of_sibling: params[:registration_form][:sibling_existing_parents][:class_of_sibling],sec: params[:registration_form][:sibling_existing_parents][:sec], admission_num: params[:registration_form][:sibling_existing_parents][:admission_num],school_name: params[:registration_form][:sibling_existing_parents][:school_name])
    @registration_form.build_father_data(name: params[:registration_form][:father_datas][:name],qualification: params[:registration_form][:father_datas][:qualification],qualification_proof: params[:registration_form][:father_datas][:qualification_proof],annual_income: params[:registration_form][:father_datas][:annual_income],occupation_designation: params[:registration_form][:father_datas][:occupation_designation], id: params[:registration_form][:father_datas][:id],organisation_name: params[:registration_form][:father_datas][:organisation_name],organisation_address: params[:registration_form][:father_datas][:organisation_address])
    @registration_form.build_mother_data(name: params[:registration_form][:mother_datas][:name],qualification: params[:registration_form][:mother_datas][:qualification],qualification_proof: params[:registration_form][:mother_datas][:qualification_proof],annual_income: params[:registration_form][:mother_datas][:annual_income],occupation_designation: params[:registration_form][:mother_datas][:occupation_designation],organisation_name: params[:registration_form][:mother_datas][:organisation_name],organisation_address: params[:registration_form][:mother_datas][:organisation_address])
    respond_to do |format|
      if @registration_form.save
        # StudentCatRegForm.create(registration_form_id: @registration_form.id,student_category_id: )
        format.html { redirect_to @registration_form, notice: 'Registration form was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registration_form }
      else
        format.html { render action: 'new' }
        format.json { render json: @registration_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_forms/1
  # PATCH/PUT /registration_forms/1.json
  def update
    @registration_form = RegistrationForm.new(name_of_student: params[:registration_form][:name_of_student], date_of_birth: params[:registration_form][:date_of_birth], gender: params[:registration_form][:gender],nationality:  params[:registration_form][:nationality],caste: params[:registration_form][:caste],community_category: params[:registration_form][:community_category], student_category: params[:registration_form][:student_category] ,child_with_special_needs: params[:registration_form][:child_with_special_needs],locality: params[:registration_form][:locality], kilometers: params[:registration_form][:kilometers], residental_address: params[:registration_form][:residental_address],residental_address2: params[:registration_form][:residental_address2],pincode: params[:registration_form][:pincode],landmark: params[:registration_form][:landmark],mobile_number: params[:registration_form][:mobile_number],landline_number: params[:registration_form][:landline_number],email: params[:registration_form][:email],tie_up: params[:registration_form][:tie_up],rbi_proof: params[:registration_form][:rbi_proof],sail_proof: params[:registration_form][:sail_proof],reference: params[:registration_form][:reference],remarks: params[:registration_form][:remarks])
    @registration_form.date_of_birth_proof = params[:registration_form][:date_of_birth_proof] 
    @registration_form.build_student_categories(membership_no: params[:registration_form][:membership_no],grandfather_name: params[:registration_form][:grandfather_name], branch: params[:registration_form][:branch],year_of_passing: params[:registration_form][:year_of_passing],marksheet_proof: params[:registration_form][:marksheet_proof],sbi_membership_no: params[:registration_form][:sbi_membership_no],sbi_branch: params[:registration_form][:sbi_branch],service_retirement: params[:registration_form][:service_retirement])
    @registration_form.build_sibling_existing_parent(name: params[:registration_form][:sibling_existing_parents][:name], class_of_sibling: params[:registration_form][:sibling_existing_parents][:class_of_sibling],sec: params[:registration_form][:sibling_existing_parents][:sec], admission_num: params[:registration_form][:sibling_existing_parents][:admission_num],school_name: params[:registration_form][:sibling_existing_parents][:school_name])
    @registration_form.build_father_data(name: params[:registration_form][:father_datas][:name],qualification: params[:registration_form][:father_datas][:qualification],qualification_proof: params[:registration_form][:father_datas][:qualification_proof],annual_income: params[:registration_form][:father_datas][:annual_income],occupation_designation: params[:registration_form][:father_datas][:occupation_designation],organisation_name: params[:registration_form][:father_datas][:organisation_name],organisation_address: params[:registration_form][:father_datas][:organisation_address])
    @registration_form.build_mother_data(name: params[:registration_form][:mother_datas][:name],qualification: params[:registration_form][:mother_datas][:qualification],qualification_proof: params[:registration_form][:mother_datas][:qualification_proof],annual_income: params[:registration_form][:mother_datas][:annual_income],occupation_designation: params[:registration_form][:mother_datas][:occupation_designation],organisation_name: params[:registration_form][:mother_datas][:organisation_name],organisation_address: params[:registration_form][:mother_datas][:organisation_address])
    respond_to do |format|
      if @registration_form.update(registration_form_params)
        format.html { redirect_to @registration_form, notice: 'Registration form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registration_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_forms/1
  # DELETE /registration_forms/1.json
  def destroy
    @registration_form.destroy
    respond_to do |format|
      format.html { redirect_to registration_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_form
      @registration_form = RegistrationForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_form_params
      # params.require(:registration_form).permit(:name_of_student, :date_of_birth, :gender, :nationality, :caste, :community_category, :student_category_id, :sibling_existing_parent_id, :child_with_special_needs, :locality, :residental_address, :pincode, :landmark, :mobile_number, :landline_number, :email, :father_data_id, :mother_data, :application_number)
      params.require(:registration_form).permit!
    end
end
