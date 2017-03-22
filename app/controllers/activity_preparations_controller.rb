class ActivityPreparationsController < ApplicationController
  before_action :set_activity_preparation, only: [:show, :edit, :update, :destroy]

  # GET /activity_preparations
  # GET /activity_preparations.json
  def index
    @activity_preparations = ActivityPreparation.all
  end

  # GET /activity_preparations/1
  # GET /activity_preparations/1.json
  def show
  end

  # GET /activity_preparations/new
  def new
    @activity_preparation = ActivityPreparation.new
  end

  # GET /activity_preparations/1/edit
  def edit
  end

  # POST /activity_preparations
  # POST /activity_preparations.json
  def create
    @activity_preparation = ActivityPreparation.new(activity_preparation_params)

    respond_to do |format|
      if @activity_preparation.save
        format.html { redirect_to @activity_preparation, notice: 'Activity preparation was successfully created.' }
        format.json { render :show, status: :created, location: @activity_preparation }
      else
        format.html { render :new }
        format.json { render json: @activity_preparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_preparations/1
  # PATCH/PUT /activity_preparations/1.json
  def update
    respond_to do |format|
      if @activity_preparation.update(activity_preparation_params)
        format.html { redirect_to @activity_preparation, notice: 'Activity preparation was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_preparation }
      else
        format.html { render :edit }
        format.json { render json: @activity_preparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_preparations/1
  # DELETE /activity_preparations/1.json
  def destroy
    @activity_preparation.destroy
    respond_to do |format|
      format.html { redirect_to activity_preparations_url, notice: 'Activity preparation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_preparation
      @activity_preparation = ActivityPreparation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_preparation_params
      params.require(:activity_preparation).permit(:name)
    end
end
