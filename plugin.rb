# frozen_string_literal: true

# name: attachment-record
# about: attachment-record
# meta_topic_id: TODO
# version: 0.0.1
# authors: tangchenran
# url: TODO
# required_version: 2.7.0

enabled_site_setting :attachment_record_enabled

register_asset "javascripts/discourse/initializers/attachment-record.js"
register_asset "javascripts/discourse/admin/attachment-record.js"

after_initialize do
  require_relative "app/models/attachment_record"
  require_relative "app/controllers/attachment_records_controller"
end
