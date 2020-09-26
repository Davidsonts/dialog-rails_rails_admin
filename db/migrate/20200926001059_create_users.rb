class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :year
      t.integer :sex
      t.string :city
      t.integer :uf

      t.timestamps
    end
  end
end
