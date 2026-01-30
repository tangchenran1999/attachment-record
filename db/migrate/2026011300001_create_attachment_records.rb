class CreateAttachmentRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :attachment_records do |t|
      t.string :community_name
      t.string :topic_name
      t.string :user_name
      t.string :attachment_name
      t.timestamps
    end
  end
end
