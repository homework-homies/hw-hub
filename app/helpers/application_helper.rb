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
end