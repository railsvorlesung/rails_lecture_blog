xml.instruct!

xml.rss "version" => "2.0", "xmlns:dc" => "http://purl.org/dc/elements/1.1/" do
 xml.channel do

   xml.title       "lectureblog posts"
   xml.link        blog_index_url
   xml.description "Very nice blog posts."

   @posts.each do |post|
     xml.item do
       xml.title       post.title
       xml.link        blog_index_url
       xml.description post.body
       xml.guid        blog_index_url
     end
   end
 end
end
