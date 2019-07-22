class CreateMslogs < ActiveRecord::Migration[5.2]
  def change
    create_table :mslogs do |t|
      t.date :date
      t.references :machine, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
