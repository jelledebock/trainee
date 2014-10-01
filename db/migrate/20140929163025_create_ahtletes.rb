class CreateAhtletes < ActiveRecord::Migration
  def change
    create_table :ahtletes do |t|

      t.timestamps
    end
  end
end
