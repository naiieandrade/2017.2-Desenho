class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name_client
      t.string :birth_date
      t.string :cpf
      t.string :phone_client
      t.string :email_client
      t.string :password_client

      t.timestamps
    end
  end
end
