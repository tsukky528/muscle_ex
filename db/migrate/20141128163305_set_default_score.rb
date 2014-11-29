class SetDefaultScore < ActiveRecord::Migration
  def change
    change_column :movies, :score, :integer, default:  0
  end
end
