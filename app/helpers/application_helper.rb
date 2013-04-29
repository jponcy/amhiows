module ApplicationHelper
  def title
    shortTitle='amhiows'
    if @title.nil?
      shortTitle
    else
      shortTitle + ' | ' + @title
    end
  end
end
