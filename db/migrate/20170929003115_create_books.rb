class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :isbn
      t.string :name
      t.string :description
      t.string :img_url
      t.timestamps
    end
  end
end
