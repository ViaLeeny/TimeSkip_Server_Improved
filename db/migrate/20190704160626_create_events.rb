class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :image_url
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
