class CreateComplexUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :complex_users do |t|
      t.string :name
      t.integer :age
      t.money :wallet
      t.bigint :atoms
      t.integer :lucky_numbers, array: true
      t.string :tags, array: true
      t.jsonb :foriegn_accounts, default: {}

      t.timestamps
    end
  end
end
