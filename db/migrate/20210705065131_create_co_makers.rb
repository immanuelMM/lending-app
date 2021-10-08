class CreateCoMakers < ActiveRecord::Migration[6.1]
  def change
    create_table :co_makers do |t|
      t.string :full_name
      t.string :address
      t.integer :number
      t.string :email
      t.references :borrower

       t.timestamps
    end
  end
end
