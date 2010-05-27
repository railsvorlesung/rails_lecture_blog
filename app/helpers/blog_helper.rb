module BlogHelper
  def comment_form_id(post)
    "comment_form_id_#{post.id}"
  end
  
  def post_comments_id(post_id, label = "")
    "post_ul_id_#{post_id}_#{label}"
  end
  
  def link_to_show_comments(post)
    link_to_function "Kommentare anzeigen", "$('#{post_comments_id(post.id, :div)}').show();"
  end
end
