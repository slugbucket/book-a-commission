class ActivityPaperworksController < ApplicationController
  before_action :set_activity_paperwork, only: [:show, :edit, :update, :destroy]

  # GET /activity_paperworks
  # GET /activity_paperworks.json
  def index
    @activity_paperworks = ActivityPaperwork.all
  end

  # GET /activity_paperworks/1
  # GET /activity_paperworks/1.json
  def show
  end

  # GET /activity_paperworks/new
  def new
    @activity_paperwork = ActivityPaperwork.new
  end

  # GET /activity_paperworks/1/edit
  def edit
  end

  # POST /activity_paperworks
  # POST /activity_paperworks.json
  def create
    @activity_paperwork = ActivityPaperwork.new(activity_paperwork_params)

    respond_to do |format|
      if @activity_paperwork.save
        format.html { redirect_to @activity_paperwork, notice: 'Activity paperwork was successfully created.' }
        format.json { render :show, status: :created, location: @activity_paperwork }
      else
        format.html { render :new }
        format.json { render json: @activity_paperwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_paperworks/1
  # PATCH/PUT /activity_paperworks/1.json
  def update
    respond_to do |format|
      if @activity_paperwork.update(activity_paperwork_params)
        format.html { redirect_to @activity_paperwork, notice: 'Activity paperwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_paperwork }
      else
        format.html { render :edit }
        format.json { render json: @activity_paperwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_paperworks/1
  # DELETE /activity_paperworks/1.json
  def destroy
    @activity_paperwork.destroy
    respond_to do |format|
      format.html { redirect_to activity_paperworks_url, notice: 'Activity paperwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_paperwork
      @activity_paperwork = ActivityPaperwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_paperwork_params
      params.require(:activity_paperwork).permit(:name)
    end
end
