class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :suffix
      t.string :photo_url
      t.string :job_title
      t.string :employer

      t.timestamps
    end
  end
end
