class ActivityWritingsController < ApplicationController
  before_action :set_activity_writing, only: [:show, :edit, :update, :destroy]

  # GET /activity_writings
  # GET /activity_writings.json
  def index
    @activity_writings = ActivityWriting.all
  end

  # GET /activity_writings/1
  # GET /activity_writings/1.json
  def show
  end

  # GET /activity_writings/new
  def new
    @activity_writing = ActivityWriting.new
  end

  # GET /activity_writings/1/edit
  def edit
  end

  # POST /activity_writings
  # POST /activity_writings.json
  def create
    @activity_writing = ActivityWriting.new(activity_writing_params)

    respond_to do |format|
      if @activity_writing.save
        format.html { redirect_to @activity_writing, notice: 'Activity writing was successfully created.' }
        format.json { render :show, status: :created, location: @activity_writing }
      else
        format.html { render :new }
        format.json { render json: @activity_writing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_writings/1
  # PATCH/PUT /activity_writings/1.json
  def update
    respond_to do |format|
      if @activity_writing.update(activity_writing_params)
        format.html { redirect_to @activity_writing, notice: 'Activity writing was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_writing }
      else
        format.html { render :edit }
        format.json { render json: @activity_writing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_writings/1
  # DELETE /activity_writings/1.json
  def destroy
    @activity_writing.destroy
    respond_to do |format|
      format.html { redirect_to activity_writings_url, notice: 'Activity writing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_writing
      @activity_writing = ActivityWriting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_writing_params
      params.require(:activity_writing).permit(:name)
    end
end
