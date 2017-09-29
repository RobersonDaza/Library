class CreateBookInstances < ActiveRecord::Migration[5.1]
  def change
    create_table :book_instances do |t|
      t.integer :id_users
      t.integer :id_books
      t.string :states
      t.timestamps
    end
  end
end
