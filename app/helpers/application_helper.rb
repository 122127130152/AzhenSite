module ApplicationHelper

  def articles_status(status_value)
  	status_hash = { 1 => "未发布", 2 => "已发布", 3 => "关闭" }
    status_hash[status_value] || ''
  end
end
