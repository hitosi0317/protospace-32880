class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title 
      t.text :catch_copy
      t.text :concept
      t.references :user
      t.timestamps
    end
    add_foreign_key :prototypes, :users
  end
end
