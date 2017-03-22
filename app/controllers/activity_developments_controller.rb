class ActivityDevelopmentsController < ApplicationController
  before_action :set_activity_development, only: [:show, :edit, :update, :destroy]

  # GET /activity_developments
  # GET /activity_developments.json
  def index
    @activity_developments = ActivityDevelopment.all
  end

  # GET /activity_developments/1
  # GET /activity_developments/1.json
  def show
  end

  # GET /activity_developments/new
  def new
    @activity_development = ActivityDevelopment.new
  end

  # GET /activity_developments/1/edit
  def edit
  end

  # POST /activity_developments
  # POST /activity_developments.json
  def create
    @activity_development = ActivityDevelopment.new(activity_development_params)

    respond_to do |format|
      if @activity_development.save
        format.html { redirect_to @activity_development, notice: 'Activity development was successfully created.' }
        format.json { render :show, status: :created, location: @activity_development }
      else
        format.html { render :new }
        format.json { render json: @activity_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_developments/1
  # PATCH/PUT /activity_developments/1.json
  def update
    respond_to do |format|
      if @activity_development.update(activity_development_params)
        format.html { redirect_to @activity_development, notice: 'Activity development was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_development }
      else
        format.html { render :edit }
        format.json { render json: @activity_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_developments/1
  # DELETE /activity_developments/1.json
  def destroy
    @activity_development.destroy
    respond_to do |format|
      format.html { redirect_to activity_developments_url, notice: 'Activity development was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_development
      @activity_development = ActivityDevelopment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_development_params
      params.require(:activity_development).permit(:name)
    end
end
