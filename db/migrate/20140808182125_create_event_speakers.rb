class CreateEventSpeakers < ActiveRecord::Migration
  def change
    create_table :event_speakers do |t|
      t.belongs_to :event
      t.belongs_to :speaker

      t.timestamps
    end
  end
end
