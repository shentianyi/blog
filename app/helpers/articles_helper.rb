module ArticlesHelper

  def render_category_select article
    collection_select :article, :category_id, Category.all, :id, :name,{selected:article.category_id}
  end

  def text_html(text)
    markdown_render=Redcarpet::Render::SmartyHTML.new
    markdown=Redcarpet::Markdown.new(markdown_render, autolink: true)
    markdown.render(text).to_html
  end
end
