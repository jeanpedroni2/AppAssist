class AcessoriosController < ApplicationController
  before_action :set_acessorio, only: %i[ show edit update destroy ]

  # GET /acessorios or /acessorios.json
  def index
    @acessorios = Acessorio.all
  end

  # GET /acessorios/1 or /acessorios/1.json
  def show
  end

  # GET /acessorios/new
  def new
    @acessorio = Acessorio.new
  end

  # GET /acessorios/1/edit
  def edit
  end

  # POST /acessorios or /acessorios.json
  def create
    @acessorio = Acessorio.new(acessorio_params)

    respond_to do |format|
      if @acessorio.save
        format.html { redirect_to @acessorio, notice: "Acessorio was successfully created." }
        format.json { render :show, status: :created, location: @acessorio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acessorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acessorios/1 or /acessorios/1.json
  def update
    respond_to do |format|
      if @acessorio.update(acessorio_params)
        format.html { redirect_to @acessorio, notice: "Acessorio was successfully updated." }
        format.json { render :show, status: :ok, location: @acessorio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acessorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acessorios/1 or /acessorios/1.json
  def destroy
    @acessorio.destroy!

    respond_to do |format|
      format.html { redirect_to acessorios_path, status: :see_other, notice: "Acessorio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acessorio
      @acessorio = Acessorio.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def acessorio_params
      params.expect(acessorio: [ :descricao ])
    end
end
