class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
