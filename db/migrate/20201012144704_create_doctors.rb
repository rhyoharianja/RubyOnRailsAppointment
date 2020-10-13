class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :fullname
      t.string :specialist
      t.references :hospital, foreign_key: true

      t.timestamps
    end
  end
end
