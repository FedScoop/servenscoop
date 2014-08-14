class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :events, :speakers
    create_join_table :events, :sponsors
  end
end
