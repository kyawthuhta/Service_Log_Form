class CreateSvms < ActiveRecord::Migration[5.2]
  def change
    create_table :svms do |t|
      t.references :svclog, foreign_key: true
      t.references :mslog, foreign_key: true

      t.timestamps
    end
  end
end
