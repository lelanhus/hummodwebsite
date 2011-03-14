module DocumentsHelper
  
  
  def edit_document_link(doc)
    link_to "Edit Document Body", edit_document_path(doc) if current_user_is_author?(doc)
  end
  
  def current_user_is_author?(doc)
    current_user.id == doc.id
  end
end