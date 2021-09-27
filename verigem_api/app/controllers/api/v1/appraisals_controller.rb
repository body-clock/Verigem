class Api::V1::AppraisalsController < ApplicationController
  before_action :set_appraisal, only: [:show, :update, :destroy]

  # GET /appraisals
  def index
    @appraisals = Appraisal.all

    render json: @appraisals.reverse
  end

  # GET /appraisals/1
  def show
    render json: @appraisal
  end

  # POST /appraisals
  def create
    @appraisal = Appraisal.new(appraisal_params)

    if @appraisal.save
      render json: @appraisal, status: :created, location: api_v1_appraisals_path(@appraisal)
    else
      render json: @appraisal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appraisals/1
  def update
    if @appraisal.update(appraisal_params)
      render json: @appraisal
    else
      render json: @appraisal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appraisals/1
  def destroy
    @appraisal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appraisal
      @appraisal = Appraisal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appraisal_params
      params.require(:appraisal).permit(:brand, :item_type, :client_notes, :status)
    end
end
