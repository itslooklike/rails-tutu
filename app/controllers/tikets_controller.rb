class TiketsController < ApplicationController
  before_action :set_tiket, only: [:show, :edit, :update, :destroy]

  # GET /tikets
  # GET /tikets.json
  def index
    @tikets = Tiket.all
  end

  # GET /tikets/1
  # GET /tikets/1.json
  def show
  end

  # GET /tikets/new
  def new
    @tiket = Tiket.new
  end

  # GET /tikets/1/edit
  def edit
  end

  # POST /tikets
  # POST /tikets.json
  def create
    @tiket = Tiket.new(tiket_params)

    respond_to do |format|
      if @tiket.save
        format.html { redirect_to @tiket, notice: 'Tiket was successfully created.' }
        format.json { render :show, status: :created, location: @tiket }
      else
        format.html { render :new }
        format.json { render json: @tiket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tikets/1
  # PATCH/PUT /tikets/1.json
  def update
    respond_to do |format|
      if @tiket.update(tiket_params)
        format.html { redirect_to @tiket, notice: 'Tiket was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiket }
      else
        format.html { render :edit }
        format.json { render json: @tiket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tikets/1
  # DELETE /tikets/1.json
  def destroy
    @tiket.destroy
    respond_to do |format|
      format.html { redirect_to tikets_url, notice: 'Tiket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiket
      @tiket = Tiket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiket_params
      params.require(:tiket).permit(:train_id, :user_id)
    end
end
