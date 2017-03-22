class ActivityCommissionsController < ApplicationController
  before_action :set_activity_commission, only: [:show, :edit, :update, :destroy]

  # GET /activity_commissions
  # GET /activity_commissions.json
  def index
    @activity_commissions = ActivityCommission.all
  end

  # GET /activity_commissions/1
  # GET /activity_commissions/1.json
  def show
  end

  # GET /activity_commissions/new
  def new
    @activity_commission = ActivityCommission.new
  end

  # GET /activity_commissions/1/edit
  def edit
  end

  # POST /activity_commissions
  # POST /activity_commissions.json
  def create
    @activity_commission = ActivityCommission.new(activity_commission_params)

    respond_to do |format|
      if @activity_commission.save
        format.html { redirect_to @activity_commission, notice: 'Activity commission was successfully created.' }
        format.json { render :show, status: :created, location: @activity_commission }
      else
        format.html { render :new }
        format.json { render json: @activity_commission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_commissions/1
  # PATCH/PUT /activity_commissions/1.json
  def update
    respond_to do |format|
      if @activity_commission.update(activity_commission_params)
        format.html { redirect_to @activity_commission, notice: 'Activity commission was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_commission }
      else
        format.html { render :edit }
        format.json { render json: @activity_commission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_commissions/1
  # DELETE /activity_commissions/1.json
  def destroy
    @activity_commission.destroy
    respond_to do |format|
      format.html { redirect_to activity_commissions_url, notice: 'Activity commission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_commission
      @activity_commission = ActivityCommission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_commission_params
      params.require(:activity_commission).permit(:name, :commission_id, :number_of_slots, :min_slot_separation)
    end
end
