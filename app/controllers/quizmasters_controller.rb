class QuizmastersController < ApplicationController
  before_action :set_quizmaster, only: [:show, :edit, :update, :destroy]

  # GET /quizmasters
  # GET /quizmasters.json
  def index
    @quizmasters = Quizmaster.all
  end

  # GET /quizmasters/1
  # GET /quizmasters/1.json
  def show
  end

  # GET /quizmasters/new
  def new
    @quizmaster = Quizmaster.new
  end

  # GET /quizmasters/1/edit
  def edit
  end

  # POST /quizmasters
  # POST /quizmasters.json
  def create
    @quizmaster = Quizmaster.new(quizmaster_params)

    respond_to do |format|
      if @quizmaster.save
        format.html { redirect_to @quizmaster, notice: 'Quizmaster was successfully created.' }
        format.json { render :show, status: :created, location: @quizmaster }
      else
        format.html { render :new }
        format.json { render json: @quizmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizmasters/1
  # PATCH/PUT /quizmasters/1.json
  def update
    respond_to do |format|
      if @quizmaster.update(quizmaster_params)
        format.html { redirect_to @quizmaster, notice: 'Quizmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @quizmaster }
      else
        format.html { render :edit }
        format.json { render json: @quizmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizmasters/1
  # DELETE /quizmasters/1.json
  def destroy
    @quizmaster.destroy
    respond_to do |format|
      format.html { redirect_to quizmasters_url, notice: 'Quizmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quizmaster
      @quizmaster = Quizmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quizmaster_params
      params.require(:quizmaster).permit(:user_id, :quizid, :score, :quiz_id)
    end
end
