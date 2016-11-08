Post.create(
  user_id: 1,
  title: "Markdown Post",
  created_at: Time.now,
  content: 
    %Q{### There Is Something You Should Know!
 
  This is my very first post using markdown!
 
  How do you like it?  I learned this from [RichOnRails.com](http://richonrails.com/articles/rendering-markdown-with-redcarpet)!}
  )