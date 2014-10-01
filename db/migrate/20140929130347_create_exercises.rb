class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.belongs_to :activity
      t.string :summary
      t.integer :repetitions
      t.string :entity

      t.timestamps
    end
  end
end
