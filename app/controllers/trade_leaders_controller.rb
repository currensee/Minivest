class TradeLeadersController < ApplicationController
  # GET /trade_leaders
  # GET /trade_leaders.xml
  def index
    @trade_leaders = TradeLeader.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trade_leaders }
    end
  end

  # GET /trade_leaders/1
  # GET /trade_leaders/1.xml
  def show
    @trade_leader = TradeLeader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trade_leader }
    end
  end

  # GET /trade_leaders/new
  # GET /trade_leaders/new.xml
  def new
    @trade_leader = TradeLeader.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trade_leader }
    end
  end

  # GET /trade_leaders/1/edit
  def edit
    @trade_leader = TradeLeader.find(params[:id])
  end

  # POST /trade_leaders
  # POST /trade_leaders.xml
  def create
    @trade_leader = TradeLeader.new(params[:trade_leader])

    respond_to do |format|
      if @trade_leader.save
        format.html { redirect_to(@trade_leader, :notice => 'Trade leader was successfully created.') }
        format.xml  { render :xml => @trade_leader, :status => :created, :location => @trade_leader }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trade_leader.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trade_leaders/1
  # PUT /trade_leaders/1.xml
  def update
    @trade_leader = TradeLeader.find(params[:id])

    respond_to do |format|
      if @trade_leader.update_attributes(params[:trade_leader])
        format.html { redirect_to(@trade_leader, :notice => 'Trade leader was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trade_leader.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_leaders/1
  # DELETE /trade_leaders/1.xml
  def destroy
    @trade_leader = TradeLeader.find(params[:id])
    @trade_leader.destroy

    respond_to do |format|
      format.html { redirect_to(trade_leaders_url) }
      format.xml  { head :ok }
    end
  end
end
