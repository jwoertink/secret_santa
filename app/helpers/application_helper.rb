module ApplicationHelper
  def cdnjs_tag(project)
    javascript_include_tag "//cdnjs.cloudflare.com/ajax/libs/#{project}"
  end
end
