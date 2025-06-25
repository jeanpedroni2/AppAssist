class CategoriaEquipamentosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_categoria_equipamento, only: %i[ show edit update destroy ]

  # GET /categoria_equipamentos or /categoria_equipamentos.json
  def index
    @categoria_equipamentos = CategoriaEquipamento.all
  end

  # GET /categoria_equipamentos/1 or /categoria_equipamentos/1.json
  def show
  end

  # GET /categoria_equipamentos/new
  def new
    @categoria_equipamento = CategoriaEquipamento.new
  end

  # GET /categoria_equipamentos/1/edit
  def edit
  end

  # POST /categoria_equipamentos or /categoria_equipamentos.json
  def create
    @categoria_equipamento = CategoriaEquipamento.new(categoria_equipamento_params)

    respond_to do |format|
      if @categoria_equipamento.save
        format.html { redirect_to @categoria_equipamento, notice: "Categoria equipamento was successfully created." }
        format.json { render :show, status: :created, location: @categoria_equipamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoria_equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoria_equipamentos/1 or /categoria_equipamentos/1.json
  def update
    respond_to do |format|
      if @categoria_equipamento.update(categoria_equipamento_params)
        format.html { redirect_to @categoria_equipamento, notice: "Categoria equipamento was successfully updated." }
        format.json { render :show, status: :ok, location: @categoria_equipamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoria_equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoria_equipamentos/1 or /categoria_equipamentos/1.json
  def destroy
    @categoria_equipamento.destroy!

    respond_to do |format|
      format.html { redirect_to categoria_equipamentos_path, status: :see_other, notice: "Categoria equipamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria_equipamento
      @categoria_equipamento = CategoriaEquipamento.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def categoria_equipamento_params
      params.expect(categoria_equipamento: [ :descricao ])
    end
end
