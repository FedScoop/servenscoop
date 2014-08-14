class AddEventAndSponsorColumns < ActiveRecord::Migration
  def change
  	add_column :event_sponsors, :event_id, :int
  	add_column :event_sponsors, :sponsor_id, :int
  end
end
