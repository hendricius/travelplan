class LuggagesController < ApplicationController
  before_action :set_luggage, only: [:show, :edit, :update, :destroy]

  # GET /luggages
  # GET /luggages.json
  def index
    @luggages = Luggage.all
  end

  # GET /luggages/1
  # GET /luggages/1.json
  def show
  end

  # GET /luggages/new
  def new
    @luggage = Luggage.new
  end

  # GET /luggages/1/edit
  def edit
  end

  # POST /luggages
  # POST /luggages.json
  def create
    @luggage = Luggage.new(luggage_params)

    respond_to do |format|
      if @luggage.save
        format.html { redirect_to @luggage, notice: 'Luggage was successfully created.' }
        format.json { render :show, status: :created, location: @luggage }
      else
        format.html { render :new }
        format.json { render json: @luggage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luggages/1
  # PATCH/PUT /luggages/1.json
  def update
    respond_to do |format|
      if @luggage.update(luggage_params)
        format.html { redirect_to @luggage, notice: 'Luggage was successfully updated.' }
        format.json { render :show, status: :ok, location: @luggage }
      else
        format.html { render :edit }
        format.json { render json: @luggage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luggages/1
  # DELETE /luggages/1.json
  def destroy
    @luggage.destroy
    respond_to do |format|
      format.html { redirect_to luggages_url, notice: 'Luggage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luggage
      @luggage = Luggage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luggage_params
      params.require(:luggage).permit(:name, :trip_id, :participant_id, :quantity, :price, :comment, :importance, :taken_care_of, :taken_care_of_by_id)
    end
end
