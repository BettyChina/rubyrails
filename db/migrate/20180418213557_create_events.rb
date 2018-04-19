class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_date
      t.string :event_location
      t.string :event_host
      t.string :string
      t.string :event_action
      t.string :event_owner
      t.references :user, index: true

      t.timestamps
    end
  end
end
