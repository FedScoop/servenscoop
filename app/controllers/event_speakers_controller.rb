class EventSpeakersController < ApplicationController
  before_action :set_event_speaker, only: [:show, :edit, :update, :destroy]

  # GET /event_speakers
  # GET /event_speakers.json
  def index
    @event_speakers = EventSpeaker.all
  end

  # GET /event_speakers/1
  # GET /event_speakers/1.json
  def show
  end

  # GET /event_speakers/new
  def new
    @event_speaker = EventSpeaker.new
    @speaker = Speaker.find(params[:speaker_id])
    @event_speaker.speaker_id = @speaker
    @Time = Time.now
    @upcoming_events = Event.all
  end

  # GET /event_speakers/1/edit
  def edit
  end

  # POST /event_speakers
  # POST /event_speakers.json
  def create
    @event_speaker = EventSpeaker.new(event_speaker_params)

    respond_to do |format|
      if @event_speaker.save
        format.html { redirect_to @event_speaker, notice: 'Event speaker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event_speaker }
      else
        format.html { render action: 'new' }
        format.json { render json: @event_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_speakers/1
  # PATCH/PUT /event_speakers/1.json
  def update
    respond_to do |format|
      if @event_speaker.update(event_speaker_params)
        format.html { redirect_to @event_speaker, notice: 'Event speaker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @event_speaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_speakers/1
  # DELETE /event_speakers/1.json
  def destroy
    @event_speaker.destroy
    respond_to do |format|
      format.html { redirect_to event_speakers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_speaker
      @event_speaker = EventSpeaker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_speaker_params
      params.require(:event_speaker).permit(:speaker_id,:event_id) 
    end
end
