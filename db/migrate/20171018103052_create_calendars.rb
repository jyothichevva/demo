class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :task

      t.timestamps null: false
    end
  end
end
