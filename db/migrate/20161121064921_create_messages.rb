class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :number
      t.datetime :published
      t.string :body

      t.timestamps null: false
    end
  end
end
