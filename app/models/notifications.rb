class Notifications < ActionMailer::Base
  

  def new_comment(comment, sent_at = Time.now)
    subject    "Ein neuer Kommentar für den Post #{comment.post.title}"
    recipients 'penner234@mailinator.com'
    from       'penner234@mailinator.com'
    sent_on    sent_at
    
    body       :comment => comment
  end

end
