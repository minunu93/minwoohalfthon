class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :pw
      t.string :food
      t.string :phon
      t.string :position
      t.string :food
      t.text :description

      t.timestamps null: false
    end
  end
end
