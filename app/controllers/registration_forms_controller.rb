class RegistrationFormsController < ApplicationController
  before_action :set_registration_form, only: [:show, :edit, :update, :destroy]

  # GET /registration_forms
  # GET /registration_forms.json
  def index
    @registration_forms = RegistrationForm.all
  end

  def pdf_to
    @registration_forms = RegistrationForm.all
    
  end

  # GET /registration_forms/1
  # GET /registration_forms/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "registration_forms.pdf"
        # pdf = RegistrationFormPdf.new(@registration_form)   
        # send_data pdf.render, :filename => "registration_forms.pdf", :type => 'application/pdf' , disposition: "inline" 
      end
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
    @registration_form = RegistrationForm.create(name_of_student: params[:registration_form][:name_of_student], date_of_birth: params[:registration_form][:date_of_birth], gender: params[:registration_form][:gender],nationality:  params[:registration_form][:nationality],religion:  params[:registration_form][:religion],caste: params[:registration_form][:caste],community_category: params[:registration_form][:community_category],child_with_special_needs: params[:registration_form][:child_with_special_needs],locality: params[:registration_form][:locality], residental_address: params[:registration_form][:residental_address],residental_address2: params[:registration_form][:residental_address2],pincode: params[:registration_form][:pincode],mobile_number: params[:registration_form][:mobile_number],landline_number: params[:registration_form][:landline_number],email: params[:registration_form][:email],sibling: params[:registration_form][:sibling],child_special: params[:registration_form][:child_special])
    #f@registration_form.date_of_birth_proof = params[:registration_form][:date_of_birth_proof] 
    @registration_form.build_student_cat_reg_form(student_category_id: params[:registration_form][:student_category].to_i)
    #nil.test!
    @registration_form.build_sibling_existing_parent(name: params[:registration_form][:sibling_existing_parents][:name], class_of_sibling: params[:registration_form][:sibling_existing_parents][:class_of_sibling],sec: params[:registration_form][:sibling_existing_parents][:sec], admission_num: params[:registration_form][:sibling_existing_parents][:admission_num],school_name: params[:registration_form][:sibling_existing_parents][:school_name])
    @registration_form.build_father_data(name: params[:registration_form][:father_datas][:name],qualification: params[:registration_form][:father_datas][:qualification],annual_income: params[:registration_form][:father_datas][:annual_income],occupation_designation: params[:registration_form][:father_datas][:occupation_designation],organisation_name: params[:registration_form][:father_datas][:organisation_name],organisation_address: params[:registration_form][:father_datas][:organisation_address],organisation_address2: params[:registration_form][:father_datas][:organisation_address2],organisation_type: params[:registration_form][:father_datas][:organisation_type])
    @registration_form.build_mother_data(name: params[:registration_form][:mother_datas][:name],qualification: params[:registration_form][:mother_datas][:qualification],annual_income: params[:registration_form][:mother_datas][:annual_income],occupation_designation: params[:registration_form][:mother_datas][:occupation_designation],organisation_name: params[:registration_form][:mother_datas][:organisation_name],organisation_address: params[:registration_form][:mother_datas][:organisation_address],organisation_address2: params[:registration_form][:mother_datas][:organisation_address2],professional: params[:registration_form][:mother_datas][:professional],organisation_type: params[:registration_form][:mother_datas][:organisation_type])
    respond_to do |format|
      if @registration_form.save
        student_category_id = params[:registration_form][:student_category].to_i
      case student_category_id
      when 1
        type = "G"        
      when 2
        SbiGrandParent.create(membership_number: params[:registration_form][:grand_membership_no],grandfather_name: params[:registration_form][:grandfather_name],branch: params[:registration_form][:grand_branch],service_retirement: params[:registration_form][:grand_service_retirement],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        # nil.test! 
        type = "SBIGP"     
      when 3
        SbiOfficer.create(membership_number: params[:registration_form][:sbi_officer_membership_no],branch: params[:registration_form][:sbi_officer_branch],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "SBIC"        
      when 4
        PreSchool.create(admission_number: params[:registration_form][:admission_number],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "PS"
      when 5
        Alumni.create(year_of_passing:params[:registration_form][:alumni_year_of_passing],alumni_category:params[:registration_form][:alumni_category],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "AL"
      when 6
        StaffChild.create(branch: params[:registration_form][:staff_child],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "SC"
      end
        @registration_form.application_number = "SBOAJC/"+"#{@registration_form.id+1000}"+"/#{type}"
        @registration_form.save!
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
    # nil.test!
    @registration_form.update_attributes(name_of_student: params[:registration_form][:name_of_student], date_of_birth: params[:registration_form][:date_of_birth], gender: params[:registration_form][:gender],nationality:  params[:registration_form][:nationality],religion:  params[:registration_form][:religion],caste: params[:registration_form][:caste],community_category: params[:registration_form][:community_category],child_with_special_needs: params[:registration_form][:child_with_special_needs],locality: params[:registration_form][:locality], residental_address: params[:registration_form][:residental_address],residental_address2: params[:registration_form][:residental_address2],pincode: params[:registration_form][:pincode],mobile_number: params[:registration_form][:mobile_number],landline_number: params[:registration_form][:landline_number],email: params[:registration_form][:email],sibling: params[:registration_form][:sibling],child_special: params[:registration_form][:child_special])
    @registration_form.build_student_cat_reg_form(student_category_id: params[:registration_form][:student_category].to_i)
    @registration_form.sibling_existing_parent.update_attributes(name: params[:registration_form][:sibling_existing_parents][:name], class_of_sibling: params[:registration_form][:sibling_existing_parents][:class_of_sibling],sec: params[:registration_form][:sibling_existing_parents][:sec], admission_num: params[:registration_form][:sibling_existing_parents][:admission_num],school_name: params[:registration_form][:sibling_existing_parents][:school_name])
    @registration_form.father_data.update_attributes(name: params[:registration_form][:father_datas][:name],qualification: params[:registration_form][:father_datas][:qualification],annual_income: params[:registration_form][:father_datas][:annual_income],occupation_designation: params[:registration_form][:father_datas][:occupation_designation],organisation_name: params[:registration_form][:father_datas][:organisation_name],organisation_address: params[:registration_form][:father_datas][:organisation_address],organisation_type: params[:registration_form][:father_datas][:organisation_type])
    @registration_form.mother_data.update_attributes(name: params[:registration_form][:mother_datas][:name],qualification: params[:registration_form][:mother_datas][:qualification],annual_income: params[:registration_form][:mother_datas][:annual_income],occupation_designation: params[:registration_form][:mother_datas][:occupation_designation],organisation_name: params[:registration_form][:mother_datas][:organisation_name],organisation_address: params[:registration_form][:mother_datas][:organisation_address],organisation_type: params[:registration_form][:mother_datas][:organisation_type],professional: params[:registration_form][:mother_datas][:professional])
    respond_to do |format|
      if @registration_form.save
        student_category_id = params[:registration_form][:student_category].to_i
      case student_category_id
      when 1
        type = "G"        
      when 2
        SbiGrandParent.create(membership_number: params[:registration_form][:grand_membership_no],grandfather_name: params[:registration_form][:grandfather_name],branch: params[:registration_form][:grand_branch],service_retirement: params[:registration_form][:grand_service_retirement],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        # nil.test! 
        type = "SBIGP"     
      when 3
        SbiOfficer.create(membership_number: params[:registration_form][:sbi_officer_membership_no],branch: params[:registration_form][:sbi_officer_branch],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "SBIC"        
      when 4
        PreSchool.create(student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "PS"
      when 5
        # nil.test!
        Alumni.create(alumni_category: params[:registration_form][:alumni_category],year_of_passing: params[:registration_form][:alumni_year_of_passing],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "SIB"
      when 6
        StaffChild.create(branch: params[:registration_form][:staff_child],student_cat_reg_form_id: @registration_form.student_cat_reg_form.id)
        type = "SC"
      end 
      # @registration_form.application_number = "SBOAJC/"+"#{@registration_form.id+1000}"+"/#{type}" 
      @registration_form.save!
      #if @registration_form.update(registration_form_params)    
        format.html { redirect_to @registration_form, notice: 'Registration form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registration_form.errors, status: :unprocessable_entity }
      #end
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

  def search

    @results = RegistrationForm.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conferences }
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
