class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :number
      t.string :FT
      t.string :description
      t.boolean :keepMeLoggedIn

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
