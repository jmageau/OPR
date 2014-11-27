class VisitingListsController < ApplicationController
  # GET /visiting_lists
  # GET /visiting_lists.json
  def index
    @visiting_lists = VisitingList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visiting_lists }
    end
  end

  # GET /visiting_lists/1
  # GET /visiting_lists/1.json
  def show
    @visiting_list = VisitingList.find(params[:id])



    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visiting_list }
    end
  end

  # GET /visiting_lists/new
  # GET /visiting_lists/new.json
  def new
    @visiting_list = VisitingList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visiting_list }
    end
  end

  # GET /visiting_lists/1/edit
  def edit
    @visiting_list = VisitingList.find(params[:id])
  end

  # POST /visiting_lists
  # POST /visiting_lists.json
  def create
    @visiting_list = VisitingList.new(params[:visiting_list])

    respond_to do |format|
      if @visiting_list.save
        format.html { redirect_to @visiting_list, notice: 'Visiting list was successfully created.' }
        format.json { render json: @visiting_list, status: :created, location: @visiting_list }
      else
        format.html { render action: "new" }
        format.json { render json: @visiting_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /visiting_lists/1
  # PUT /visiting_lists/1.json
  def update
    @visiting_list = VisitingList.find(params[:id])

    respond_to do |format|
      if @visiting_list.update_attributes(params[:visiting_list])
        format.html { redirect_to @visiting_list, notice: 'Visiting list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visiting_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visiting_lists/1
  # DELETE /visiting_lists/1.json
  def destroy
    @visiting_list = VisitingList.find(params[:id])
    @visiting_list.destroy

    respond_to do |format|
      format.html { redirect_to visiting_lists_url }
      format.json { head :no_content }
    end
  end
end
