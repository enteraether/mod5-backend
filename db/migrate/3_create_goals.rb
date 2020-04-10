class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer :likes
      t.boolean :private
      t.string :what
      t.string :why
      t.string :name
      t.datetime :start_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
