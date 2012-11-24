module PostsHelper
  def limited_post_content(post_content)
    length = post_content.split(' ').length
    limited_post_content = length > Post::MAX_NO_OF_WORDS_IN_INDEX ? post_content[/(\S+\s+){#{Post::MAX_NO_OF_WORDS_IN_INDEX}}/].strip : post_content
    limited_post_content += '...'
    limited_post_content
  end
  
  def link_to_post(post)
    comments_count = post.comments.count
    if comments_count > 0
      link_to "#{comments_count} Comment(s)", post_path(post), :class => 'comments'
    else
      link_to "No Comments", post_path(post), :class => 'comments'
    end
  end
end
