class CreateEventSponsors < ActiveRecord::Migration
  def change
    create_table :event_sponsors do |t|

      t.timestamps
    end
  end
end
