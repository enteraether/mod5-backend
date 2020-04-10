class AddCounterToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :counter, :integer, :default => 0
  end
end
