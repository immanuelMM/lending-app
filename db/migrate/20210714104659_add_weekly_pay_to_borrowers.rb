class AddWeeklyPayToBorrowers < ActiveRecord::Migration[6.1]
  def change
    add_column :borrowers, :weekly_pay, :integer
  end
end
