class ArteiclesController < ApplicationController
  before_action :set_arteicle, only: [:show, :edit, :update, :destroy]

  # GET /arteicles
  # GET /arteicles.json
  def index
    @arteicles = Arteicle.all
  end

  # GET /arteicles/1
  # GET /arteicles/1.json
  def show
  end

  # GET /arteicles/new
  def new
    @arteicle = Arteicle.new
  end

  # GET /arteicles/1/edit
  def edit
  end

  # POST /arteicles
  # POST /arteicles.json
  def create
    @arteicle = Arteicle.new(arteicle_params)

    respond_to do |format|
      if @arteicle.save
        format.html { redirect_to @arteicle, notice: 'Arteicle was successfully created.' }
        format.json { render :show, status: :created, location: @arteicle }
      else
        format.html { render :new }
        format.json { render json: @arteicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arteicles/1
  # PATCH/PUT /arteicles/1.json
  def update
    respond_to do |format|
      if @arteicle.update(arteicle_params)
        format.html { redirect_to @arteicle, notice: 'Arteicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @arteicle }
      else
        format.html { render :edit }
        format.json { render json: @arteicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arteicles/1
  # DELETE /arteicles/1.json
  def destroy
    @arteicle.destroy
    respond_to do |format|
      format.html { redirect_to arteicles_url, notice: 'Arteicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arteicle
      @arteicle = Arteicle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arteicle_params
      params.require(:arteicle).permit(:title, :author, :text)
    end
end
