class CreateCarsParts < ActiveRecord::Migration[7.0]
  def change
    create_table :cars_parts do |t|
      t.references :car, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
