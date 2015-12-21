module ApplicationHelper
 def markdown(text)
    options = {
      filter_html:     true,
      space_after_headers: true, 
      fenced_code_blocks: true,
      superscript:        true,  
      space_after_headers: true
    }

    extensions = {
      autolink:           true,
      superscript:        true
    }

    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)

    markdown.render(text).html_safe
  end

  def github_auth_url
    base_url = "https://github.com/login/oauth/authorize"
    scope = "user,gists"
    query_params = URI.encode_www_form({
      :client_id     => ENV["GITHUB_CLIENT_ID"],
      :scope         => scope
    })
    base_url + "?" + query_params
  end
end