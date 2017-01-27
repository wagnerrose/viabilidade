class PopController < ApplicationController
  before_action :set_pop, only: [:show, :edit, :update, :destroy]

  # GET /pop
  # GET /pop.json
  def index
    @pop = Pop.all
  end

  # GET /pop/1
  # GET /pop/1.json
  def show
  end

  # GET /pop/new
  def new
    @pop = Pop.new
  end

  # GET /pop/1/edit
  def edit
  end

  # POST /pop
  # POST /pop.json
  def create
    @pop = Pop.new(pop_params)

    respond_to do |format|
      if @pop.save
        format.html { redirect_to @pop, notice: 'Pop was successfully created.' }
        format.json { render :show, status: :created, location: @pop }
      else
        format.html { render :new }
        format.json { render json: @pop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pop/1
  # PATCH/PUT /pop/1.json
  def update
    respond_to do |format|
      if @pop.update(pop_params)
        format.html { redirect_to @pop, notice: 'Pop was successfully updated.' }
        format.json { render :show, status: :ok, location: @pop }
      else
        format.html { render :edit }
        format.json { render json: @pop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pop/1
  # DELETE /pop/1.json
  def destroy
    @pop.destroy
    respond_to do |format|
      format.html { redirect_to pop_index_url, notice: 'Pop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pop
      @pop = Pop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pop_params
      params.require(:pop).permit(:nome, :designacao, :detentor, :uf, :cod_localidade)
    end
end
