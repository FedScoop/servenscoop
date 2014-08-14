class EventSponsorsController < ApplicationController
  before_action :set_event_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /event_sponsors
  # GET /event_sponsors.json
  def index
    @event_sponsors = EventSponsor.all
  end

  # GET /event_sponsors/1
  # GET /event_sponsors/1.json
  def show
  end

  # GET /event_sponsors/new
  def new
    @event_sponsor = EventSponsor.new
    @sponsor = Sponsor.find(params[:sponsor_id])
    @event_sponsor.sponsor_id = @sponsor
    @Time = Time.now
    @upcoming_events = Event.all
  end

  # GET /event_sponsors/1/edit
  def edit
  end

  # POST /event_sponsors
  # POST /event_sponsors.json
  def create
    @event_sponsor = EventSponsor.new(event_sponsor_params)

    respond_to do |format|
      if @event_sponsor.save
        format.html { redirect_to @event_sponsor, notice: 'Event sponsor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_sponsor }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_sponsors/1
  # PATCH/PUT /event_sponsors/1.json
  def update
    respond_to do |format|
      if @event_sponsor.update(event_sponsor_params)
        format.html { redirect_to @event_sponsor, notice: 'Event sponsor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_sponsors/1
  # DELETE /event_sponsors/1.json
  def destroy
    @event_sponsor.destroy
    respond_to do |format|
      format.html { redirect_to event_sponsors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_sponsor
      @event_sponsor = EventSponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_sponsor_params
      params.require(:event_sponsor).permit(:sponsor_id,:event_id) 
    end
end
