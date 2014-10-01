class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fName
      t.string :lName
      t.string :gender
      t.datetime :birthdate
      t.string :street
      t.integer :housenumber
      t.integer :postalcode
      t.string :city
      t.string :country
      ## Database authenticatable
      t.string :email
      t.string :password_hash
      t.string :password_salt
      

      t.timestamps
    end
  end
end
