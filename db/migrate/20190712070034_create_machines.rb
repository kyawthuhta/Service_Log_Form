class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :mac
      t.string :cpu
      t.string :ram
      t.string :hdd
      t.string :optical_drive
      t.string :os
      t.date :purchase_date

      t.timestamps
    end
  end
end
