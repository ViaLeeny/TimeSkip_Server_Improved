class AddTopicIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :topic_id, :integer
  end
end
