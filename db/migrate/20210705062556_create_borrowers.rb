class CreateBorrowers < ActiveRecord::Migration[6.1]
  def change
    create_table :borrowers do |t|
      t.string :full_name
      t.string :address
      t.string :email
      t.string :phone_number
      t.string :loan_purpose
      t.decimal :price_lend

      t.timestamps
    end
  end
end
