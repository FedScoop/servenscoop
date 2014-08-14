class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :logo_url
      t.string :web_address

      t.timestamps
    end
  end
end
