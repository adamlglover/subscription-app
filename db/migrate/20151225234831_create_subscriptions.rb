class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :stripe_user_id
      t.boolean :active, null: false, default: false
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :subscriptions, :users
  end
end
