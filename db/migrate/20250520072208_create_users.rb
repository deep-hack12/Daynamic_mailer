class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digenst
      t.string :bio
      t.string :language
      t.string :usecase

      t.timestamps
    end
  end
end
