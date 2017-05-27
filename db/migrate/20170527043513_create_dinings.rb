class CreateDinings < ActiveRecord::Migration
  def change
    create_table :dinings do |t|
      t.string :name
      t.string :food
      t.text :content
      t.string :location
      t.string :phone

      t.timestamps null: false
    end
  end
end
