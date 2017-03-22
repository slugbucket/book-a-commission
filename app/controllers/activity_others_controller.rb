class ActivityOthersController < ApplicationController
  before_action :set_activity_other, only: [:show, :edit, :update, :destroy]

  # GET /activity_others
  # GET /activity_others.json
  def index
    @activity_others = ActivityOther.all
  end

  # GET /activity_others/1
  # GET /activity_others/1.json
  def show
  end

  # GET /activity_others/new
  def new
    @activity_other = ActivityOther.new
  end

  # GET /activity_others/1/edit
  def edit
  end

  # POST /activity_others
  # POST /activity_others.json
  def create
    @activity_other = ActivityOther.new(activity_other_params)

    respond_to do |format|
      if @activity_other.save
        format.html { redirect_to @activity_other, notice: 'Activity other was successfully created.' }
        format.json { render :show, status: :created, location: @activity_other }
      else
        format.html { render :new }
        format.json { render json: @activity_other.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_others/1
  # PATCH/PUT /activity_others/1.json
  def update
    respond_to do |format|
      if @activity_other.update(activity_other_params)
        format.html { redirect_to @activity_other, notice: 'Activity other was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_other }
      else
        format.html { render :edit }
        format.json { render json: @activity_other.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_others/1
  # DELETE /activity_others/1.json
  def destroy
    @activity_other.destroy
    respond_to do |format|
      format.html { redirect_to activity_others_url, notice: 'Activity other was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_other
      @activity_other = ActivityOther.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_other_params
      params.require(:activity_other).permit(:name)
    end
end
