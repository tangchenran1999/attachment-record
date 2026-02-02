# models/attachment_download.rb
class AttachmentDownload < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
end
