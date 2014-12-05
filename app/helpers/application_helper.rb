module ApplicationHelper
  def cdnjs_tag(project)
    javascript_include_tag "//cdnjs.cloudflare.com/ajax/libs/#{project}"
  end

  def bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      type = :success if type.to_s == 'notice'
      type = :danger  if type.to_s == 'alert'
      text = content_tag(:div, link_to(content_tag(:i, '', class: "icon-remove-sign alert-#{type}"), "#", class: 'close', data: {dismiss: 'alert'}) + message, class: "alert fade in alert-#{type}")
      flash_messages << text if message
    end
    flash_messages.join("\n").html_safe
  end
end
