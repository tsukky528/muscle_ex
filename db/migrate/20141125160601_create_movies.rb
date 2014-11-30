class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :movie
      t.text :explain
      t.integer :muscle
      t.string :title
      t.integer :score, default: 0


      t.timestamps
    end
  end
end
