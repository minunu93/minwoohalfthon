class DiningsController < ApplicationController
  before_action :set_dining, only: [:show, :edit, :update, :destroy]
  
  
  def home
    # reset_session
    @dinings = Dining.all
    unless session[:user_id].nil?
      @user = User.find(session[:user_id])
    end
    @dinings = Dining.all
  end
  
  # GET /dinings
  # GET /dinings.json
  def index
    @dinings = Dining.all
 
  end

  # GET /dinings/1
  # GET /dinings/1.json
  def show
       @dining = Dining.find(params[:id])
  end

  # GET /dinings/new
  def new
    @dining = Dining.new
  end

  # GET /dinings/1/edit
  def edit
  end

  # POST /dinings
  # POST /dinings.json
  def create
    @dining = Dining.new(dining_params)
    @dining.user_id = session[:user_id]
    respond_to do |format|
      if @dining.save
        format.html { redirect_to @dining, notice: 'Dining was successfully created.' }
        format.json { render :show, status: :created, location: @dining }
      else
        format.html { render :new }
        format.json { render json: @dining.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinings/1
  # PATCH/PUT /dinings/1.json
  def update
    respond_to do |format|
      if @dining.update(dining_params)
        format.html { redirect_to @dining, notice: 'Dining was successfully updated.' }
        format.json { render :show, status: :ok, location: @dining }
      else
        format.html { render :edit }
        format.json { render json: @dining.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinings/1
  # DELETE /dinings/1.json
  def destroy
    @dining.destroy
    respond_to do |format|
      format.html { redirect_to dinings_url, notice: 'Dining was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dining
      @dining = Dining.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dining_params
      params.require(:dining).permit(:name, :food, :content, :location, :phone, :image)
    end
end
