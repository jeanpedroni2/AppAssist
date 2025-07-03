class UnidadeMedidasController < ApplicationController
  before_action :set_unidade_medida, only: %i[ show edit update destroy ]

  # GET /unidade_medidas or /unidade_medidas.json
  def index
    @unidade_medidas = UnidadeMedida.all
  end

  # GET /unidade_medidas/1 or /unidade_medidas/1.json
  def show
  end

  # GET /unidade_medidas/new
  def new
    @unidade_medida = UnidadeMedida.new
  end

  # GET /unidade_medidas/1/edit
  def edit
  end

  # POST /unidade_medidas or /unidade_medidas.json
  def create
    @unidade_medida = UnidadeMedida.new(unidade_medida_params)

    respond_to do |format|
      if @unidade_medida.save
        format.html { redirect_to @unidade_medida, notice: "Unidade medida was successfully created." }
        format.json { render :show, status: :created, location: @unidade_medida }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unidade_medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidade_medidas/1 or /unidade_medidas/1.json
  def update
    respond_to do |format|
      if @unidade_medida.update(unidade_medida_params)
        format.html { redirect_to @unidade_medida, notice: "Unidade medida was successfully updated." }
        format.json { render :show, status: :ok, location: @unidade_medida }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unidade_medida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidade_medidas/1 or /unidade_medidas/1.json
  def destroy
    @unidade_medida.destroy!

    respond_to do |format|
      format.html { redirect_to unidade_medidas_path, status: :see_other, notice: "Unidade medida was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidade_medida
      @unidade_medida = UnidadeMedida.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def unidade_medida_params
      params.expect(unidade_medida: [ :descricao, :sigla ])
    end
end
