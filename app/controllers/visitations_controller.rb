class VisitationsController < ApplicationController
  # GET /visitations
  # GET /visitations.json
  def index
    @visitations = Visitation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visitations }
    end
  end

  # GET /visitations/1
  # GET /visitations/1.json
  def show
    @visitation = Visitation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visitation }
    end
  end

  # GET /visitations/new
  # GET /visitations/new.json
  def new
    @visitation = Visitation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visitation }
    end
  end

  # GET /visitations/1/edit
  def edit
    @visitation = Visitation.find(params[:id])
  end

  # POST /visitations
  # POST /visitations.json
  def create
    @visitation = Visitation.new(visitation_params)

    respond_to do |format|
      if @visitation.save
        format.html { redirect_to @visitation, notice: 'Visitation was successfully created.' }
        format.json { render json: @visitation, status: :created, location: @visitation }
      else
        format.html { render action: "new" }
        format.json { render json: @visitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitations/1
  # PATCH/PUT /visitations/1.json
  def update
    @visitation = Visitation.find(params[:id])

    respond_to do |format|
      if @visitation.update_attributes(visitation_params)
        format.html { redirect_to @visitation, notice: 'Visitation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitations/1
  # DELETE /visitations/1.json
  def destroy
    @visitation = Visitation.find(params[:id])
    @visitation.destroy

    respond_to do |format|
      format.html { redirect_to visitations_url }
      format.json { head :no_content }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def visitation_params
      params.require(:visitation).permit(:comments, :date, :property_id, :time)
    end
end
