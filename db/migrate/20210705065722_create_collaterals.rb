class CreateCollaterals < ActiveRecord::Migration[6.1]
  def change
    create_table :collaterals do |t|
      t.string :name
      t.decimal :price
      t.references :borrower

      t.timestamps
    end
  end
end
