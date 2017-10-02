class ChangeClientFields < ActiveRecord::Migration[5.0]
  def up
    remove_column :clients, :name_client
    remove_column :clients, :birth_date
    remove_column :clients, :cpf
    remove_column :clients, :phone_client
    remove_column :clients, :email_client
    remove_column :clients, :password_client
  end

  def down
  end
end
