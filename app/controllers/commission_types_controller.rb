class CommissionTypesController < ApplicationController
  before_action :set_commission_type, only: [:show, :edit, :update, :destroy]

  # GET /commission_types
  # GET /commission_types.json
  def index
    @commission_types = CommissionType.all
  end

  # GET /commission_types/1
  # GET /commission_types/1.json
  def show
  end

  # GET /commission_types/new
  def new
    @commission_type = CommissionType.new
  end

  # GET /commission_types/1/edit
  def edit
  end

  # POST /commission_types
  # POST /commission_types.json
  def create
    @commission_type = CommissionType.new(commission_type_params)

    respond_to do |format|
      if @commission_type.save
        format.html { redirect_to @commission_type, notice: 'Commission type was successfully created.' }
        format.json { render :show, status: :created, location: @commission_type }
      else
        format.html { render :new }
        format.json { render json: @commission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commission_types/1
  # PATCH/PUT /commission_types/1.json
  def update
    respond_to do |format|
      if @commission_type.update(commission_type_params)
        format.html { redirect_to @commission_type, notice: 'Commission type was successfully updated.' }
        format.json { render :show, status: :ok, location: @commission_type }
      else
        format.html { render :edit }
        format.json { render json: @commission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commission_types/1
  # DELETE /commission_types/1.json
  def destroy
    @commission_type.destroy
    respond_to do |format|
      format.html { redirect_to commission_types_url, notice: 'Commission type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commission_type
      @commission_type = CommissionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commission_type_params
      params.require(:commission_type).permit(:name, :days_to_complete, :active)
    end
end
