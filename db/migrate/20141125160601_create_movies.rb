class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie
      t.text :explain
      t.string :muscle

      t.timestamps
    end
  end
end
