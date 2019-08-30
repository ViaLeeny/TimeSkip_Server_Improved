class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :text
      t.string :url

      t.timestamps
    end
  end
end
