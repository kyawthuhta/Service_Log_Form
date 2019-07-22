class CreateSvclogs < ActiveRecord::Migration[5.2]
  def change
    create_table :svclogs do |t|
      t.references :organization, foreign_key: true
      t.string :department
      t.string :location

      t.timestamps
    end
  end
end
