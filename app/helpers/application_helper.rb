module ApplicationHelper
  
  def root_header_link
    text = content_tag(:h1, "HumMod")
    return link_to text, root_url, :id => :root_header_link
  end
  
  def textilize(text)
    raw RedCloth.new(text).to_html
  end
end
