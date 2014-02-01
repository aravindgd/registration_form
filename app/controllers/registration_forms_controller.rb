class RegistrationFormsController < ApplicationController
  before_action :set_registration_form, only: [:show, :edit, :update, :destroy]

  # GET /registration_forms
  # GET /registration_forms.json
  def index
    @registration_forms = RegistrationForm.all
  end

  # GET /registration_forms/1
  # GET /registration_forms/1.json
  def show
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
    @registration_form = RegistrationForm.new(name_of_student: params[:registration_form][:name_of_student],gender: params[:registration_form][:gender],nationality:  params[:registration_form][:nationality],caste: params[:registration_form][:caste],community_category: params[:registration_form][:community_category],child_with_special_needs: params[:registration_form][:child_with_special_needs],locality: params[:registration_form][:locality],residental_address: params[:registration_form][:residental_address],pincode: params[:registration_form][:pincode],landmark: params[:registration_form][:landmark],mobile_number: params[:registration_form][:mobile_number],landline_number: params[:registration_form][:landline_number],email: params[:registration_form][:email])
    @registration_form.date_of_birth_proof = params[:registration_form][:date_of_birth_proof]
    @registration_form.build_father_data(name: params[:registration_form][:father_datas][:name],qualification: params[:registration_form][:father_datas][:qualification],qualification_proof: params[:registration_form][:father_datas][:qualification_proof],annual_income: params[:registration_form][:father_datas][:annual_income],occupation_designation: params[:registration_form][:father_datas][:occupation_designation])
    @registration_form.build_mother_data(name: params[:registration_form][:mother_datas][:name],qualification: params[:registration_form][:mother_datas][:qualification],qualification_proof: params[:registration_form][:mother_datas][:qualification_proof],annual_income: params[:registration_form][:mother_datas][:annual_income],occupation_designation: params[:registration_form][:mother_datas][:occupation_designation])
    respond_to do |format|
      if @registration_form.save
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
