class BillsController < ApplicationController

  load_and_authorize_resource

  before_action :set_bill, only: [:show, :edit, :update, :destroy]
  before_filter :load_campaign, except: [:index]

  # GET /bills
  # GET /bills.json
  def index
    @bills = Bill.all
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
  end

  # GET /bills/new
  def new
    
    #@campaign= Campaign.find(params[:campaign_id])
    #bill = Bill.new(:campaign => @campaign)
    #@campaigns = Campaign.where(id: params[:campaign_id])
    #@campaigns = Campaign.where(user_id: @user.id)
    @bill = @campaign.bills.new
  end

  # GET /bills/1/edit
  def edit
  end

  # POST /bills
  # POST /bills.json
  def create

    @user=current_user
    @bill=@campaign.bills.new(params[:bill])
    @bill.user_id = @user.id

    respond_to do |format|
      if @bill.save
        format.html { redirect_to [@campaign, @bill], notice: 'Bill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bill }
      else
        format.html { render action: 'new' }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to @bill, notice: 'Bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url }
      format.json { head :no_content }
    end
  end

  def index
      @bills = Bill.all
  end

  private

    #viene fatto prima di ogni azione (before_filter) almeno ho sempre la campagna a cui si riferisce
    def load_campaign
      @campaign= Campaign.find(params[:campaign_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(:totale,:campaign_id)
    end
end
