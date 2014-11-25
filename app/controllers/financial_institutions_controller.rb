class FinancialInstitutionsController < ApplicationController
  # GET /financial_institutions
  # GET /financial_institutions.json
  def index
    @financial_institutions = FinancialInstitution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financial_institutions }
    end
  end

  # GET /financial_institutions/1
  # GET /financial_institutions/1.json
  def show
    @financial_institution = FinancialInstitution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financial_institution }
    end
  end

  # GET /financial_institutions/new
  # GET /financial_institutions/new.json
  def new
    @financial_institution = FinancialInstitution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financial_institution }
    end
  end

  # GET /financial_institutions/1/edit
  def edit
    @financial_institution = FinancialInstitution.find(params[:id])
  end

  # POST /financial_institutions
  # POST /financial_institutions.json
  def create
    @financial_institution = FinancialInstitution.new(financial_institution_params)

    respond_to do |format|
      if @financial_institution.save
        format.html { redirect_to @financial_institution, notice: 'Financial institution was successfully created.' }
        format.json { render json: @financial_institution, status: :created, location: @financial_institution }
      else
        format.html { render action: "new" }
        format.json { render json: @financial_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_institutions/1
  # PATCH/PUT /financial_institutions/1.json
  def update
    @financial_institution = FinancialInstitution.find(params[:id])

    respond_to do |format|
      if @financial_institution.update_attributes(financial_institution_params)
        format.html { redirect_to @financial_institution, notice: 'Financial institution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @financial_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_institutions/1
  # DELETE /financial_institutions/1.json
  def destroy
    @financial_institution = FinancialInstitution.find(params[:id])
    @financial_institution.destroy

    respond_to do |format|
      format.html { redirect_to financial_institutions_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def financial_institution_params
      params.require(:financial_institution).permit(:name)
    end
end
