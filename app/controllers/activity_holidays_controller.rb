class ActivityHolidaysController < ApplicationController
  before_action :set_activity_holiday, only: [:show, :edit, :update, :destroy]

  # GET /activity_holidays
  # GET /activity_holidays.json
  def index
    @activity_holidays = ActivityHoliday.all
  end

  # GET /activity_holidays/1
  # GET /activity_holidays/1.json
  def show
  end

  # GET /activity_holidays/new
  def new
    @activity_holiday = ActivityHoliday.new
  end

  # GET /activity_holidays/1/edit
  def edit
  end

  # POST /activity_holidays
  # POST /activity_holidays.json
  def create
    @activity_holiday = ActivityHoliday.new(activity_holiday_params)

    respond_to do |format|
      if @activity_holiday.save
        format.html { redirect_to @activity_holiday, notice: 'Activity holiday was successfully created.' }
        format.json { render :show, status: :created, location: @activity_holiday }
      else
        format.html { render :new }
        format.json { render json: @activity_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_holidays/1
  # PATCH/PUT /activity_holidays/1.json
  def update
    respond_to do |format|
      if @activity_holiday.update(activity_holiday_params)
        format.html { redirect_to @activity_holiday, notice: 'Activity holiday was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_holiday }
      else
        format.html { render :edit }
        format.json { render json: @activity_holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_holidays/1
  # DELETE /activity_holidays/1.json
  def destroy
    @activity_holiday.destroy
    respond_to do |format|
      format.html { redirect_to activity_holidays_url, notice: 'Activity holiday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_holiday
      @activity_holiday = ActivityHoliday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_holiday_params
      params.require(:activity_holiday).permit(:name)
    end
end
