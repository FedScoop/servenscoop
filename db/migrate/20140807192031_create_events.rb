class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :when
      t.string :where
      t.string :what

      t.timestamps
    end
  end
end
