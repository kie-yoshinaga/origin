class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title,         null: false
      t.integer :category_id, null: false
      t.string :detail,       null: false 
      t.string :directer,     null: false 
      t.date :starring,       null: false 
      t.float :rate,          null: false 
      t.references :user,     null: false
      t.timestamps
    end
  end
end
