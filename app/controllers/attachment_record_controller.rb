class AttachmentRecordsController < ::ApplicationController
  requires_login
  before_action :ensure_admin, only: [:index]

  # 记录下载信息
  def create
    AttachmentRecord.create!(
      community_name: params[:communityName],
      topic_name: params[:topicName],
      user_name: params[:userName],
      attachment_name: params[:attachmentName]
    )
    render json: { success: true }
  end

  # 管理员查看下载记录
  def index
    records = AttachmentRecord.order(created_at: :desc).limit(100)
    render json: records
  end
end
