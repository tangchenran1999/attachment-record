# config/routes.rb
Rails.application.routes.draw do
  post '/attachment-record/download', to: 'attachment_record#download'
end
