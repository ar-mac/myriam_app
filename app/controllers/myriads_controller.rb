class MyriadsController < ApplicationController
  before_action :set_myriad, only: [:show, :edit, :update, :destroy]

  # GET /myriads
  # GET /myriads.json
  def index
    @myriads = Myriad.all
  end

  # GET /myriads/1
  # GET /myriads/1.json
  def show
  end

  # GET /myriads/new
  def new
    @myriad = Myriad.new
  end

  # GET /myriads/1/edit
  def edit
  end

  # POST /myriads
  # POST /myriads.json
  def create
    @myriad = Myriad.new(myriad_params)

    respond_to do |format|
      if @myriad.save
        format.html { redirect_to @myriad, notice: 'Myriad was successfully created.' }
        format.json { render :show, status: :created, location: @myriad }
      else
        format.html { render :new }
        format.json { render json: @myriad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myriads/1
  # PATCH/PUT /myriads/1.json
  def update
    respond_to do |format|
      if @myriad.update(myriad_params)
        format.html { redirect_to @myriad, notice: 'Myriad was successfully updated.' }
        format.json { render :show, status: :ok, location: @myriad }
      else
        format.html { render :edit }
        format.json { render json: @myriad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myriads/1
  # DELETE /myriads/1.json
  def destroy
    @myriad.destroy
    respond_to do |format|
      format.html { redirect_to myriads_url, notice: 'Myriad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myriad
      @myriad = Myriad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myriad_params
      params[:myriad]
    end
end
