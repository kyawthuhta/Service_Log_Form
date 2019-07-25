class CreateCms < ActiveRecord::Migration[5.2]
  def change
    create_table :cms do |t|
      t.references :contract, foreign_key: true
      t.references :machine, foreign_key: true

      t.timestamps
    end
  end
end
