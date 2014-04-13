module ApplicationHelper
  def flash_messages
    if flash[:notice]
      type = flash[:notice][:type]

      content_tag :div, class: "alert-box #{type}", 'data-alert' => true  do
        flash[:notice][:message]
      end
    end
  end
end
