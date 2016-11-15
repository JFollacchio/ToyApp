class MicroposttestsController < ApplicationController
  before_action :set_microposttest, only: [:show, :edit, :update, :destroy]

  # GET /microposttests
  # GET /microposttests.json
  def index
    @microposttests = Microposttest.all
  end

  # GET /microposttests/1
  # GET /microposttests/1.json
  def show
  end

  # GET /microposttests/new
  def new
    @microposttest = Microposttest.new
  end

  # GET /microposttests/1/edit
  def edit
  end

  # POST /microposttests
  # POST /microposttests.json
  def create
    @microposttest = Microposttest.new(microposttest_params)

    respond_to do |format|
      if @microposttest.save
        format.html { redirect_to @microposttest, notice: 'Microposttest was successfully created.' }
        format.json { render :show, status: :created, location: @microposttest }
      else
        format.html { render :new }
        format.json { render json: @microposttest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microposttests/1
  # PATCH/PUT /microposttests/1.json
  def update
    respond_to do |format|
      if @microposttest.update(microposttest_params)
        format.html { redirect_to @microposttest, notice: 'Microposttest was successfully updated.' }
        format.json { render :show, status: :ok, location: @microposttest }
      else
        format.html { render :edit }
        format.json { render json: @microposttest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microposttests/1
  # DELETE /microposttests/1.json
  def destroy
    @microposttest.destroy
    respond_to do |format|
      format.html { redirect_to microposttests_url, notice: 'Microposttest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microposttest
      @microposttest = Microposttest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microposttest_params
      params.require(:microposttest).permit(:content, :user_id)
    end
end
