module BlogHelper
  def comment_form_id(post)
    "comment_form_id_#{post.id}"
  end
  
  def post_comments_id(post_id)
    "post_ul_id_#{post_id}"
  end
  
  def link_to_write_comment(post)
    link_to_function "Kommentar schreiben", "$('#{comment_form_id(post)}').show();"
  end
end
