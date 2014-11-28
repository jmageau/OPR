class PropertiesController < ApplicationController
  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
    end
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @property = Property.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/new
  # GET /properties/new.json
  def new
    @property = Property.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property }
    end
  end

  # GET /properties/1/edit
  def edit
    @property = Property.find(params[:id])
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render json: @property, status: :created, location: @property }
      else
        format.html { render action: "new" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    @property = Property.find(params[:id])
    # puts "!!!!!!!!!!!!!!!!!"
    # puts params[:property][:picture]
    respond_to do |format|
      params[:property][:picture].each do |picture|
        p = Picture.create(image: picture)
        @property.pictures << p
      end
      if @property.update_attributes(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end


  def index_by_owner
    @properties = current_user.properties.where(deletion_status: false)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @properties }
    end
  end

  def owner_add_property
    @property = Property.new
    @property.owner_id = current_user.id
    @property.subsidiary_agency_id = current_user.subsidiary_agency_id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property }
    end

  end

  def mark_as_deleted
    @property = Property.find(params[:id])
    @property.update_attribute(:deletion_status, true)

    redirect_to :back
  end

  def add_to_visiting_list
    @property = Property.find(params[:id])
    unless current_user.visiting_list.properties.include?(@property)
      current_user.visiting_list.properties << @property
    end
    redirect_to :back
  end

  def search
    @properties = Property.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @properties }
    end
  end

  private

    # Use this method to whitelist the permissible parameters. Example:
    # params.require(:person).permit(:name, :age)
    # Also, you can specialize this method with per-user checking of permissible attributes.
    def property_params
      params.require(:property).permit(:address, :deletion_status, :location, :number_of_bathrooms, :number_of_bedrooms, :number_of_other_rooms, :owner_id, :property_type, :rent, :subsidiary_agency_id, :picture)
    end
end

