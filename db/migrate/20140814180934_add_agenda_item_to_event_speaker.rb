class AddAgendaItemToEventSpeaker < ActiveRecord::Migration
  def change
  	add_column :event_speakers, :agenda_item_id, :int
  end
end
