class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :phone
      t.string :designation
      t.string :organization

      t.timestamps
    end
  end
end
