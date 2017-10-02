class CreateClientSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :client_schedules do |t|
      t.belongs_to :client, index: true
      t.belongs_to :schedule, index: true
      t.timestamps
    end
  end
end
