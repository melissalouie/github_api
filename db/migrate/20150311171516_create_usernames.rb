class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :name
    end
  end
end
