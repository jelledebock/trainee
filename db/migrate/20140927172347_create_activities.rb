class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :type
      t.belongs_to :person
      t.date :date
      t.string :remarks
      t.integer :HRavg
      t.integer :HRmax
      t.decimal :speed
      t.integer :RPE
      t.string :beforeNotes
      t.string :afterNotes
      t.integer :place
      t.decimal :priceMoney
      t.string :status

      t.timestamps
    end
  end
end
