class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :type
      t.decimal :salary
      t.float :numberlikes
      t.integer :experience
      t.decimal :weight
      t.decimal :height
      t.integer :hr_max
      t.integer :hr_treshold

      t.timestamps
    end
  end
end
