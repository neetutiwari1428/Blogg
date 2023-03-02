class WorkexperiencesController < ApplicationController
  before_action :set_workexperience, only: %i[ show edit update destroy ]

  # GET /workexperiences or /workexperiences.json
  def index
    @workexperiences = Workexperience.all
  end

  # GET /workexperiences/1 or /workexperiences/1.json
  def show
  end

  # GET /workexperiences/new
  def new
    @workexperience = Workexperience.new
  end

  # GET /workexperiences/1/edit
  def edit
  end

  # POST /workexperiences or /workexperiences.json
  def create
    @workexperience = Workexperience.new(workexperience_params)

    respond_to do |format|
      if @workexperience.save
        format.html { redirect_to workexperience_url(@workexperience), notice: "Workexperience was successfully created." }
        format.json { render :show, status: :created, location: @workexperience }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workexperience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workexperiences/1 or /workexperiences/1.json
  def update
    respond_to do |format|
      if @workexperience.update(workexperience_params)
        format.html { redirect_to workexperience_url(@workexperience), notice: "Workexperience was successfully updated." }
        format.json { render :show, status: :ok, location: @workexperience }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workexperience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workexperiences/1 or /workexperiences/1.json
  def destroy
    @workexperience.destroy

    respond_to do |format|
      format.html { redirect_to workexperiences_url, notice: "Workexperience was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workexperience
      @workexperience = Workexperience.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workexperience_params
      params.require(:workexperience).permit(:designation, :company, :startdate, :enddate, :about)
    end
end
