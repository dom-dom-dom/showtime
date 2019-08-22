class CreateScreenings < ActiveRecord::Migration[5.2]
  def change
    create_table :screenings do |t|
      t.references :movie, foreign_key: true
      t.integer :seats
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
