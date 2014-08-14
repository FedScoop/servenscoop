class AddTokenDimensions < ActiveRecord::Migration
  def change
  	add_column :sponsors, :place_token_top, :int
  	add_column :sponsors, :place_token_left, :int
  	add_column :sponsors, :logo_width, :int
  	add_column :sponsors, :logo_height, :int
  end
end
