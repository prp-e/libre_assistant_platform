class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :prompt
      t.text :completion
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
