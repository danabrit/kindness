class CreateActs < ActiveRecord::Migration[5.1]
  def change
    create_table :acts do |t|
      t.string :name
      t.text :description
      t.integer :cost
      t.integer :effort
      t.integer :time

      t.timestamps
    end
  end
end
