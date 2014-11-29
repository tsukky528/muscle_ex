class ChangeMuscleToInteger < ActiveRecord::Migration
  def change
    change_column(:movies, :muscle, :integer)
  end
end
