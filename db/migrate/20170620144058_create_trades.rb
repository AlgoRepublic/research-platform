class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :avatar
      t.text :description
      t.string :user_id

      t.timestamps null: false
    end
  end
end
