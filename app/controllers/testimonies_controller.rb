class TestimoniesController < ApplicationController
  before_action :set_testimony, only: %i[ show update destroy ]

  # GET /testimonies
  def index
    @testimonies = Testimony.all
    @testimonies_true = Testimony.where(is_validate: true)

    render json: @testimonies
  end

  # GET /testimonies/1
  def show
    render json: @testimony
  end

  # POST /testimonies
  def create
    @testimony = Testimony.new(testimony_params)

    if @testimony.save
      render json: @testimony, status: :created, location: @testimony
    else
      render json: @testimony.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /testimonies/1
  def update
    if @testimony.update(testimony_params)
      render json: @testimony
    else
      render json: @testimony.errors, status: :unprocessable_entity
    end
  end

  # DELETE /testimonies/1
  def destroy
    @testimony.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimony
      @testimony = Testimony.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testimony_params
      params.require(:testimony).permit(:first_name, :age, :description)
    end
end
