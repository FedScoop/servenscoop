class CreateAgendaItems < ActiveRecord::Migration
  def change
    create_table :agenda_items do |t|
      t.time :when
      t.string :title

      t.timestamps
    end
  end
end
