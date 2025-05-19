class CreateTamplets < ActiveRecord::Migration[8.0]
  def change
    create_table :tamplets do |t|
      t.string :language
      t.string :message
      t.string :usecase

      t.timestamps
    end
  end
end
