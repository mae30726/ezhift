class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.refereces :user, null: false, foreign_key: true
      t.integer :month

      t.timestamps
    end
  end
end
