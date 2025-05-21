class CreateTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :templates do |t|
      t.string :language
      t.string :message
      t.string :usecase

      t.timestamps
    end
  end
end
