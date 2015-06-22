class PeliculasLsController < ApplicationController
  before_action :set_peliculas_l, only: [:show, :edit, :update, :destroy]

  # GET /peliculas_ls
  # GET /peliculas_ls.json
  def index
    @peliculas_ls = PeliculasL.all
  end

  # GET /peliculas_ls/1
  # GET /peliculas_ls/1.json
  def show
  end

  # GET /peliculas_ls/new
  def new
    @peliculas_l = PeliculasL.new
  end

  # GET /peliculas_ls/1/edit
  def edit
  end

  # POST /peliculas_ls
  # POST /peliculas_ls.json
  def create
    @peliculas_l = PeliculasL.new(peliculas_l_params)

    respond_to do |format|
      if @peliculas_l.save
        format.html { redirect_to @peliculas_l, notice: 'Peliculas l was successfully created.' }
        format.json { render :show, status: :created, location: @peliculas_l }
      else
        format.html { render :new }
        format.json { render json: @peliculas_l.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peliculas_ls/1
  # PATCH/PUT /peliculas_ls/1.json
  def update
    respond_to do |format|
      if @peliculas_l.update(peliculas_l_params)
        format.html { redirect_to @peliculas_l, notice: 'Peliculas l was successfully updated.' }
        format.json { render :show, status: :ok, location: @peliculas_l }
      else
        format.html { render :edit }
        format.json { render json: @peliculas_l.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peliculas_ls/1
  # DELETE /peliculas_ls/1.json
  def destroy
    @peliculas_l.destroy
    respond_to do |format|
      format.html { redirect_to peliculas_ls_url, notice: 'Peliculas l was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peliculas_l
      @peliculas_l = PeliculasL.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peliculas_l_params
      params.require(:peliculas_l).permit(:Nombredepel)
    end
end
