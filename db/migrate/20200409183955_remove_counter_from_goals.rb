class RemoveCounterFromGoals < ActiveRecord::Migration[6.0]
  def change

    remove_column :goals, :counter, :integer
  end
end
