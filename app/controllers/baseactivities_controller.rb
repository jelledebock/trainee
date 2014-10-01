class BaseactivitiesController < ApplicationController
  before_action :set_baseactivity, only: [:show, :edit, :update, :destroy]

  # GET /baseactivities
  # GET /baseactivities.json
  def index
    @baseactivities = Baseactivity.all
  end

  # GET /baseactivities/1
  # GET /baseactivities/1.json
  def show
  end

  # GET /baseactivities/new
  def new
    @baseactivity = Baseactivity.new
  end

  # GET /baseactivities/1/edit
  def edit
  end

  # POST /baseactivities
  # POST /baseactivities.json
  def create
    @baseactivity = Baseactivity.new(baseactivity_params)

    respond_to do |format|
      if @baseactivity.save
        format.html { redirect_to @baseactivity, notice: 'Baseactivity was successfully created.' }
        format.json { render :show, status: :created, location: @baseactivity }
      else
        format.html { render :new }
        format.json { render json: @baseactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baseactivities/1
  # PATCH/PUT /baseactivities/1.json
  def update
    respond_to do |format|
      if @baseactivity.update(baseactivity_params)
        format.html { redirect_to @baseactivity, notice: 'Baseactivity was successfully updated.' }
        format.json { render :show, status: :ok, location: @baseactivity }
      else
        format.html { render :edit }
        format.json { render json: @baseactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baseactivities/1
  # DELETE /baseactivities/1.json
  def destroy
    @baseactivity.destroy
    respond_to do |format|
      format.html { redirect_to baseactivities_url, notice: 'Baseactivity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baseactivity
      @baseactivity = Baseactivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baseactivity_params
      params[:baseactivity]
    end
end
