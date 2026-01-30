Discourse::Application.routes.append do
  # 前端记录下载
  post "/attachment-record" => "attachment_records#create"

  # 管理员查看下载记录
  get "/admin/attachment-record" => "attachment_records#index"
end
