class AimsController < ApplicationController
  before_action :set_aim, only: [:show, :edit, :update, :destroy]
  
  before_filter :load_campaign, except: [:index, :show]
  # GET /aims
  # GET /aims.json
  def index
    @aims = Aim.all
  end

  # GET /aims/1
  # GET /aims/1.json
  def show
    @aim=Aim.find(params[:id])
  end

  # GET /aims/new
  def new
    @aim = Aim.new
    # @camp= Campaign.find(params[:campaign_id])
  end

  # GET /aims/1/edit
  def edit
  end

  # POST /aims
  # POST /aims.json
def create
    @creato= false
    @tettomax = false
    @errore=false
    #controllo per ogni versamento se è stato speso tutto o in parte
    @aimTemp = Aim.new(aim_params)
    #finchè ho soldi dello scopo da spartire

    #se inserisco parole o numeri <=0 visualizzo errore
    @imp = @aimTemp.importo
    if (@imp<=0)
      @errore=true
    end
    
    puts "Importo dello scopo: "+@imp.to_s
    #ATTENZIONE
    #DA FARE ASSOLUTAMENTE IL CONTROLLO DELL'INSERIMENTO!!!!
    #NON SARA POSSIBILE INSERIRE UN IMPORTO PER UNO SCOPO 
    #SUPERIORE AI SOLDI TOTALI ANCORA DA ALLOCARE
    #while (@imp > 0)
    if (@imp>@camp.somma-@camp.sommaimporti)
      #se l'importo inserito troppo elevato esco
      @tettomax = true
    else
      #scorro i versamenti della campagna
      @camp.bills.sort_by{|bill| bill.created_at}.each do |bill|
        #per ogni versamento controllo se tutto il versamento è stato speso o no
        #se ho ancora soldi disponibili, li uso e creo un aim con l'id di quel versamento
        puts "Sono nel versamento con id: "+bill.id.to_s
        if bill.totale-bill.spesi > 0
          #ho dei soldi del versamento da allocare
          if ((bill.totale-bill.spesi) >= @imp)
            puts "soldi maggiori"
            #se i soldi da allocare sono >= dei soldi dello scopo
            #aggiorno il bill
            #azzero l'importo dell'aim
            bill.spesi=bill.spesi+@imp
            bill.save

            @aim= Aim.new(aim_params)
            @aim.importo=@imp
            @aim.bill_id=bill.id
            @aim.save
            
            @imp=0
            @creato=true
          else
            puts "soldi minori"
            #se i soldi del versamento da allocare sono minori di quelli dello scopo
            @aim= Aim.new(aim_params)
            @aim.importo=bill.totale-bill.spesi
            @aim.bill_id=bill.id
            @aim.save

            @imp=@imp-(bill.totale-bill.spesi)

            bill.spesi=bill.totale
            bill.save

            @creato=true
          end
        end
        puts "imp prima del break vale "+@imp.to_s
        break if (@imp==0)
      end
    end
    #end
    
    #@camp= Campaign.find(params[:campaign_id])
    #@aim = Aim.new(aim_params)
    #seleziono primo versamento che ha come id campagna lo stesso di quella in cui sono
 #   @prova=Bill.find_by campaign_id:@camp.id
    
 #   @aim.bill_id=@prova.id
    
    respond_to do |format|
      if @errore
        format.html { redirect_to campaign_path(@camp.id), alert: 'Inserisci un importo in euro maggiore di 0' }
      elsif @creato
        format.html { redirect_to campaign_path(@camp.id), notice: 'Scopo inserito correttamente' }
        format.json { render action: 'show', status: :created, location: @aim }
        #@prova.spesi=@prova.spesi+@aim.importo
        #@prova.save
      elsif @tettomax
          #importo troppo alto ritorno a schermata campagna
          format.html { redirect_to @camp, alert: 'importo troppo elevato' }
      else
          format.html { render action: 'new' }
          format.json { render json: @aim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aims/1
  # PATCH/PUT /aims/1.json
  def update
    respond_to do |format|
      if @aim.update(aim_params)
        format.html { redirect_to @aim, notice: 'Aim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aim.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /aims/1
  # PATCH/PUT /aims/1.json
  def update
    respond_to do |format|
      if @aim.update(aim_params)
        format.html { redirect_to @aim, notice: 'Aim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @aim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aims/1
  # DELETE /aims/1.json
  def destroy
    @aim.destroy
    respond_to do |format|
      format.html { redirect_to aims_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aim
      @aim = Aim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aim_params
       params.require(:aim).permit(:scopo,:importo,@camp)
    
    end

    private

    #viene fatto prima di ogni azione (before_filter) almeno ho sempre la campagna a cui si riferisce
    def load_campaign
      @camp= Campaign.find(params[:campaign_id])
    end
end
