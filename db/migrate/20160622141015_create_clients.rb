class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :cpf
      t.string :location
      t.float :salary

      t.index :cpf, unique: true

      t.timestamps null: false
    end
  end
end
