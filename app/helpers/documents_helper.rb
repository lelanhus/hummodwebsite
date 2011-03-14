module DocumentsHelper
  
  
  def edit_document_link
    link_to "Edit Document Body", edit_document_path(@document)
  end
  
  def current_user_is_author?
    current_user.id == @document.user_id
  end
end