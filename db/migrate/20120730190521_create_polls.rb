class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title
      t.text :description
      t.string :maker_url
      t.string :taker_url

      t.timestamps
    end
  end
end
