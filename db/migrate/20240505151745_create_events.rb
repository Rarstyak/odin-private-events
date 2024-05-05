class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.text :location
      t.text :body

      t.timestamps
    end
  end
end
