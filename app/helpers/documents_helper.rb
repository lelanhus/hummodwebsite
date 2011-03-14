module DocumentsHelper
  
  
  def edit_document_link
    link_to "Edit Document Body", edit_document_path(@document)
  end
  
  def coderay(text)  
    text.gsub(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do  
      content_tag("notextile", CodeRay.scan($3, $2).div(:css => :class))  
    end  
  end
end