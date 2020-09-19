class CreateBooks < ActiveRecord::Migration[6.0]
  def up
    create_table :books do |t|
      t.string "title"
      t.string "author"
      t.string "genre"
      t.integer "price"
      t.string "date"
      t.timestamps
    end
  end
  def down
    drop_table :books
  end

end
