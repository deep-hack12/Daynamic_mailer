class FixPasswordDigestColumnName < ActiveRecord::Migration[8.0]
  def change
        rename_column :users, :password_digenst, :password_digest
  end
end
