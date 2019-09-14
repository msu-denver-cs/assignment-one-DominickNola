class InvoicePartsController < ApplicationController
  before_action :set_invoice_part, only: [:show, :edit, :update, :destroy]

  # GET /invoice_parts
  # GET /invoice_parts.json
  def index
    @invoice_parts = InvoicePart.all
  end

  # GET /invoice_parts/1
  # GET /invoice_parts/1.json
  def show
  end

  # GET /invoice_parts/new
  def new
    @invoice_part = InvoicePart.new
  end

  # GET /invoice_parts/1/edit
  def edit
  end

  # POST /invoice_parts
  # POST /invoice_parts.json
  def create
    @invoice_part = InvoicePart.new(invoice_part_params)

    respond_to do |format|
      if @invoice_part.save
        format.html { redirect_to @invoice_part, notice: 'Invoice part was successfully created.' }
        format.json { render :show, status: :created, location: @invoice_part }
      else
        format.html { render :new }
        format.json { render json: @invoice_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_parts/1
  # PATCH/PUT /invoice_parts/1.json
  def update
    respond_to do |format|
      if @invoice_part.update(invoice_part_params)
        format.html { redirect_to @invoice_part, notice: 'Invoice part was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice_part }
      else
        format.html { render :edit }
        format.json { render json: @invoice_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_parts/1
  # DELETE /invoice_parts/1.json
  def destroy
    @invoice_part.destroy
    respond_to do |format|
      format.html { redirect_to invoice_parts_url, notice: 'Invoice part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_part
      @invoice_part = InvoicePart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_part_params
      params.require(:invoice_part).permit(:make, :model, :vin, :part_inventories_id)
    end
end
