module ApplicationHelper

  def time(timestamp)
    Time.at(timestamp).utc.strftime("%B %-d at %l:%M %P")
  end

end
