class CreateEventAttendings < ActiveRecord::Migration[7.1]
  def change
    create_table :event_attendings do |t|
      t.boolean :rsvp, :null => false, :default => false

      t.belongs_to :attendee, foreign_key: {to_table: :users}
      t.belongs_to :attended_event, foreign_key: {to_table: :events}

      t.timestamps
    end
  end
end
