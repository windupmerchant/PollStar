class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :poll_id
      t.string :interrogative
      t.text :context

      t.timestamps
    end
  end
end
