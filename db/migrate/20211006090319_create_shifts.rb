class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.refereces :user,   null: false, foreign_key: true

      t.timestamps
    end
  end
end
