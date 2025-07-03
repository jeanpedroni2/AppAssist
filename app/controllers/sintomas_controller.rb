class SintomasController < ApplicationController
  before_action :set_sintoma, only: %i[ show edit update destroy ]

  # GET /sintomas or /sintomas.json
  def index
    @sintomas = Sintoma.all
  end

  # GET /sintomas/1 or /sintomas/1.json
  def show
  end

  # GET /sintomas/new
  def new
    @sintoma = Sintoma.new
  end

  # GET /sintomas/1/edit
  def edit
  end

  # POST /sintomas or /sintomas.json
  def create
    @sintoma = Sintoma.new(sintoma_params)

    respond_to do |format|
      if @sintoma.save
        format.html { redirect_to @sintoma, notice: "Sintoma was successfully created." }
        format.json { render :show, status: :created, location: @sintoma }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sintoma.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sintomas/1 or /sintomas/1.json
  def update
    respond_to do |format|
      if @sintoma.update(sintoma_params)
        format.html { redirect_to @sintoma, notice: "Sintoma was successfully updated." }
        format.json { render :show, status: :ok, location: @sintoma }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sintoma.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sintomas/1 or /sintomas/1.json
  def destroy
    @sintoma.destroy!

    respond_to do |format|
      format.html { redirect_to sintomas_path, status: :see_other, notice: "Sintoma was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sintoma
      @sintoma = Sintoma.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def sintoma_params
      params.expect(sintoma: [ :descricao ])
    end
end
