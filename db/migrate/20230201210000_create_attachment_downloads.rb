# db/migrate/20230201210000_create_attachment_downloads.rb
class CreateAttachmentDownloads < ActiveRecord::Migration[6.0]
  def change
    create_table :attachment_downloads do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :attachment_name
      t.string :topic_title
      t.datetime :download_time

      t.timestamps
    end
  end
end
