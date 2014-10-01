class AhtletesController < ApplicationController
  before_action :set_ahtlete, only: [:show, :edit, :update, :destroy]

  # GET /ahtletes
  # GET /ahtletes.json
  def index
    @ahtletes = Ahtlete.all
  end

  # GET /ahtletes/1
  # GET /ahtletes/1.json
  def show
  end

  # GET /ahtletes/new
  def new
    @ahtlete = Ahtlete.new
  end

  # GET /ahtletes/1/edit
  def edit
  end

  # POST /ahtletes
  # POST /ahtletes.json
  def create
    @ahtlete = Ahtlete.new(ahtlete_params)

    respond_to do |format|
      if @ahtlete.save
        format.html { redirect_to @ahtlete, notice: 'Ahtlete was successfully created.' }
        format.json { render :show, status: :created, location: @ahtlete }
      else
        format.html { render :new }
        format.json { render json: @ahtlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ahtletes/1
  # PATCH/PUT /ahtletes/1.json
  def update
    respond_to do |format|
      if @ahtlete.update(ahtlete_params)
        format.html { redirect_to @ahtlete, notice: 'Ahtlete was successfully updated.' }
        format.json { render :show, status: :ok, location: @ahtlete }
      else
        format.html { render :edit }
        format.json { render json: @ahtlete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ahtletes/1
  # DELETE /ahtletes/1.json
  def destroy
    @ahtlete.destroy
    respond_to do |format|
      format.html { redirect_to ahtletes_url, notice: 'Ahtlete was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ahtlete
      @ahtlete = Ahtlete.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ahtlete_params
      params[:ahtlete]
    end
end
