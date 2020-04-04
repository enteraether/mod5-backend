class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.references :goal, null: false, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
