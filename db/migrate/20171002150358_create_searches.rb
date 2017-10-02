class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :author
      t.integer :isbn

      t.timestamps
    end
  end
end
