class PeliculassesController < ApplicationController
  before_action :set_peliculass, only: [:show, :edit, :update, :destroy]

  # GET /peliculasses
  # GET /peliculasses.json
  def index
    @peliculasses = Peliculass.all
  end

  # GET /peliculasses/1
  # GET /peliculasses/1.json
  def show
  end

  # GET /peliculasses/new
  def new
    @peliculass = Peliculass.new
  end

  # GET /peliculasses/1/edit
  def edit
  end

  # POST /peliculasses
  # POST /peliculasses.json
  def create
    @peliculass = Peliculass.new(peliculass_params)

    respond_to do |format|
      if @peliculass.save
        format.html { redirect_to @peliculass, notice: 'Peliculass was successfully created.' }
        format.json { render :show, status: :created, location: @peliculass }
      else
        format.html { render :new }
        format.json { render json: @peliculass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peliculasses/1
  # PATCH/PUT /peliculasses/1.json
  def update
    respond_to do |format|
      if @peliculass.update(peliculass_params)
        format.html { redirect_to @peliculass, notice: 'Peliculass was successfully updated.' }
        format.json { render :show, status: :ok, location: @peliculass }
      else
        format.html { render :edit }
        format.json { render json: @peliculass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peliculasses/1
  # DELETE /peliculasses/1.json
  def destroy
    @peliculass.destroy
    respond_to do |format|
      format.html { redirect_to peliculasses_url, notice: 'Peliculass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peliculass
      @peliculass = Peliculass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peliculass_params
      params.require(:peliculass).permit(:NombredePeliculas, :rate)
    end
end
