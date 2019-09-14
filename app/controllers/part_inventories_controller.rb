class PartInventoriesController < ApplicationController
  before_action :set_part_inventory, only: [:show, :edit, :update, :destroy]

  # GET /part_inventories
  # GET /part_inventories.json
  def index
    @part_inventories = PartInventory.all
  end

  # GET /part_inventories/1
  # GET /part_inventories/1.json
  def show
  end

  # GET /part_inventories/new
  def new
    @part_inventory = PartInventory.new
  end

  # GET /part_inventories/1/edit
  def edit
  end

  # POST /part_inventories
  # POST /part_inventories.json
  def create
    @part_inventory = PartInventory.new(part_inventory_params)

    respond_to do |format|
      if @part_inventory.save
        format.html { redirect_to @part_inventory, notice: 'Part inventory was successfully created.' }
        format.json { render :show, status: :created, location: @part_inventory }
      else
        format.html { render :new }
        format.json { render json: @part_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part_inventories/1
  # PATCH/PUT /part_inventories/1.json
  def update
    respond_to do |format|
      if @part_inventory.update(part_inventory_params)
        format.html { redirect_to @part_inventory, notice: 'Part inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @part_inventory }
      else
        format.html { render :edit }
        format.json { render json: @part_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_inventories/1
  # DELETE /part_inventories/1.json
  def destroy
    @part_inventory.destroy
    respond_to do |format|
      format.html { redirect_to part_inventories_url, notice: 'Part inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part_inventory
      @part_inventory = PartInventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def part_inventory_params
      params.require(:part_inventory).permit(:name, :inventory)
    end
end
