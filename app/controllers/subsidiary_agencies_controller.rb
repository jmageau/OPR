class SubsidiaryAgenciesController < ApplicationController
  # GET /subsidiary_agencies
  # GET /subsidiary_agencies.json
  def index
    @subsidiary_agencies = SubsidiaryAgency.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subsidiary_agencies }
    end
  end

  # GET /subsidiary_agencies/1
  # GET /subsidiary_agencies/1.json
  def show
    @subsidiary_agency = SubsidiaryAgency.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subsidiary_agency }
    end
  end

  # GET /subsidiary_agencies/new
  # GET /subsidiary_agencies/new.json
  def new
    @subsidiary_agency = SubsidiaryAgency.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subsidiary_agency }
    end
  end

  # GET /subsidiary_agencies/1/edit
  def edit
    @subsidiary_agency = SubsidiaryAgency.find(params[:id])
  end

  # POST /subsidiary_agencies
  # POST /subsidiary_agencies.json
  def create
    @subsidiary_agency = SubsidiaryAgency.new(params[:subsidiary_agency])

    respond_to do |format|
      if @subsidiary_agency.save
        format.html { redirect_to @subsidiary_agency, notice: 'Subsidiary agency was successfully created.' }
        format.json { render json: @subsidiary_agency, status: :created, location: @subsidiary_agency }
      else
        format.html { render action: "new" }
        format.json { render json: @subsidiary_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subsidiary_agencies/1
  # PUT /subsidiary_agencies/1.json
  def update
    @subsidiary_agency = SubsidiaryAgency.find(params[:id])

    respond_to do |format|
      if @subsidiary_agency.update_attributes(params[:subsidiary_agency])
        format.html { redirect_to @subsidiary_agency, notice: 'Subsidiary agency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subsidiary_agency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsidiary_agencies/1
  # DELETE /subsidiary_agencies/1.json
  def destroy
    @subsidiary_agency = SubsidiaryAgency.find(params[:id])
    @subsidiary_agency.destroy

    respond_to do |format|
      format.html { redirect_to subsidiary_agencies_url }
      format.json { head :no_content }
    end
  end
end
