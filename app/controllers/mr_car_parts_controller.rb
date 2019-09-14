class MrCarPartsController < ApplicationController
  before_action :set_mr_car_part, only: [:show, :edit, :update, :destroy]

  # GET /mr_car_parts
  # GET /mr_car_parts.json
  def index
    @mr_car_parts = MrCarPart.all
  end

  # GET /mr_car_parts/1
  # GET /mr_car_parts/1.json
  def show
  end

  # GET /mr_car_parts/new
  def new
    @mr_car_part = MrCarPart.new
  end

  # GET /mr_car_parts/1/edit
  def edit
  end

  # POST /mr_car_parts
  # POST /mr_car_parts.json
  def create
    @mr_car_part = MrCarPart.new(mr_car_part_params)

    respond_to do |format|
      if @mr_car_part.save
        format.html { redirect_to @mr_car_part, notice: 'Mr car part was successfully created.' }
        format.json { render :show, status: :created, location: @mr_car_part }
      else
        format.html { render :new }
        format.json { render json: @mr_car_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mr_car_parts/1
  # PATCH/PUT /mr_car_parts/1.json
  def update
    respond_to do |format|
      if @mr_car_part.update(mr_car_part_params)
        format.html { redirect_to @mr_car_part, notice: 'Mr car part was successfully updated.' }
        format.json { render :show, status: :ok, location: @mr_car_part }
      else
        format.html { render :edit }
        format.json { render json: @mr_car_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mr_car_parts/1
  # DELETE /mr_car_parts/1.json
  def destroy
    @mr_car_part.destroy
    respond_to do |format|
      format.html { redirect_to mr_car_parts_url, notice: 'Mr car part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mr_car_part
      @mr_car_part = MrCarPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mr_car_part_params
      params.require(:mr_car_part).permit(:Make, :Model, :price)
    end
end
