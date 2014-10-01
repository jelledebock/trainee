class TrainerTrains < ActiveRecord::Migration
  def self.up
  	create_table 'trainer_trains', :id => false do |t|
    t.column :trainer, :integer
    t.column :trains, :integer
	end
  end
  def self.down
  	drop_table 'trainer_trains'
  end
end
