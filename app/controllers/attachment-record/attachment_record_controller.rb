# controllers/attachment_record_controller.rb
class AttachmentRecordController < ApplicationController
  def download
    # 获取请求数据
    data = params.require(:download)
    
    # 保存下载记录
    AttachmentDownload.create!(
      user: current_user,
      post_id: data[:post_id],
      attachment_name: data[:attachment_name],
      topic_title: data[:topic_title],
      download_time: data[:download_time]
    )

    render json: { status: "success" }, status: 200
  end
end
