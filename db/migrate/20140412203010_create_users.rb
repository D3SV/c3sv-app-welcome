class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :referral_source
      t.string :referrer_name
      t.string :reason_for_visit
      t.boolean :allow_for_social_connect

      t.timestamps
    end
  end
end
