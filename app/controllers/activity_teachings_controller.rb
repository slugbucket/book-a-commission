class ActivityTeachingsController < ApplicationController
  before_action :set_activity_teaching, only: [:show, :edit, :update, :destroy]

  # GET /activity_teachings
  # GET /activity_teachings.json
  def index
    @activity_teachings = ActivityTeaching.all
  end

  # GET /activity_teachings/1
  # GET /activity_teachings/1.json
  def show
  end

  # GET /activity_teachings/new
  def new
    @activity_teaching = ActivityTeaching.new
  end

  # GET /activity_teachings/1/edit
  def edit
  end

  # POST /activity_teachings
  # POST /activity_teachings.json
  def create
    @activity_teaching = ActivityTeaching.new(activity_teaching_params)

    respond_to do |format|
      if @activity_teaching.save
        format.html { redirect_to @activity_teaching, notice: 'Activity teaching was successfully created.' }
        format.json { render :show, status: :created, location: @activity_teaching }
      else
        format.html { render :new }
        format.json { render json: @activity_teaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_teachings/1
  # PATCH/PUT /activity_teachings/1.json
  def update
    respond_to do |format|
      if @activity_teaching.update(activity_teaching_params)
        format.html { redirect_to @activity_teaching, notice: 'Activity teaching was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_teaching }
      else
        format.html { render :edit }
        format.json { render json: @activity_teaching.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_teachings/1
  # DELETE /activity_teachings/1.json
  def destroy
    @activity_teaching.destroy
    respond_to do |format|
      format.html { redirect_to activity_teachings_url, notice: 'Activity teaching was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_teaching
      @activity_teaching = ActivityTeaching.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_teaching_params
      params.require(:activity_teaching).permit(:student_name)
    end
end
