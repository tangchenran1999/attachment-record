# frozen_string_literal: true

# name: attachment-record
# about: A plugin to track attachment downloads
# meta_topic_id: TODO
# version: 0.0.1
# authors: tangchenran
# url: TODO
# required_version: 2.7.0

enabled_site_setting :attachment_record_enabled

module ::MyPluginModule
  PLUGIN_NAME = "attachment-record"
end

after_initialize do
  # Code which should run after Rails has finished booting
end
