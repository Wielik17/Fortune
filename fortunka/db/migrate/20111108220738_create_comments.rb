class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :fortune
      t.string :author
      t.string :body

      t.timestamps
    end
    add_index :comments, :fortune_id
  end
end
