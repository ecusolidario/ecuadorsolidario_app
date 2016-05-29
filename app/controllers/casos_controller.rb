class CasosController < ApplicationController
  before_action :set_caso, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @casos = Caso.all
  end

  def mis_casos
    @casos = Caso.where(user: current_user)
  end

  # GET /casos/1
  # GET /casos/1.json
  def show
  end

  # GET /casos/new
  def new
    @caso = Caso.new
  end

  # GET /casos/1/edit
  def edit
  end

  # POST /casos
  # POST /casos.json
  def create
    @caso = Caso.new(caso_params)
    @caso.user_id = current_user.id
    respond_to do |format|
      if @caso.save
        if params[:imagens]
          params[:imagens].each do |image|
            @caso.imagens.create(imagen: image)
          end
      end
        format.html { redirect_to @caso, notice: 'Se ha creado el proyecto.' }
        format.json { render :show, status: :created, location: @caso }
      else
        format.html { render :new }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /casos/1
  # PATCH/PUT /casos/1.json
  def update
    respond_to do |format|
      if @caso.update(caso_params)
        if params[:imagens]
          params[:imagens].each do |image|
            @caso.imagens.create(imagen: image)
          end
      end

        format.html { redirect_to @caso, notice: 'Caso actualizado.' }
        format.json { render :show, status: :ok, location: @caso }
      else
        format.html { render :edit }
        format.json { render json: @caso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /casos/1
  # DELETE /casos/1.json
  def destroy
    @caso.destroy
    respond_to do |format|
      format.html { redirect_to casos_url, notice: 'Caso borrado.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_caso
    @caso = Caso.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def caso_params
    params.require(:caso).permit(:titulo, :problema, :ubicacion, :youtubevideo, :user_id, imagens_attributes: [:id, :imagen, :_destroy, :remove_imagen], recursos_attributes: [:id, :nombre, :objetivo, :conseguidos, :_destroy])
  end
end
