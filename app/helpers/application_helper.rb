module ApplicationHelper
  def title
    base_title = "Railing 3.0.0"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
