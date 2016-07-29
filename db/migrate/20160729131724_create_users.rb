class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :full_name
      t.datetime :last_logged_on_at

      t.timestamps null: false
    end
  end
end
