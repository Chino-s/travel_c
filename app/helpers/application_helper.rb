module ApplicationHelper
  def page_title
    title = "Morning Glory"
    title = @page_title + " - " + title if @page_title
    title
  end
  def menu_link_to(text, path)
    link_to_unless_current(text, path) { content_tag(:span, text) }
  end

  def admin_view?
    controller.controller_path == 'admin/countries' ||
    controller.controller_path == 'admin/spots'  ||
    controller.controller_path == 'admin/cities' ||
    controller.controller_path == 'admin/foods'
  end

end
