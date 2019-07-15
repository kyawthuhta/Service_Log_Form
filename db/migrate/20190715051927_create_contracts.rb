class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.date :dated
      t.references :people, foreign_key: true
      t.date :service_from
      t.date :service_to
      t.string :preferred_date
      t.string :preferred_time

      t.timestamps
    end
  end
end
