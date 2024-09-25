class AddPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :body, null: false
      t.boolean :active, default: true
      t.boolean :featured, default: false
      t.datetime :publish_date, null: false

      t.timestamps
    end
  end
end
