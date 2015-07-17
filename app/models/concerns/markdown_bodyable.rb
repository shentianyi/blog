module MarkdownBodyable
  def self.included(klass)
    klass.class_eval do
      before_save :markdown_body

      def markdown_body
        markdown_render=Redcarpet::Render::SmartyHTML.new
        markdown=Redcarpet::Markdown.new(markdown_render,
                                         autolink: true,
                                         fenced_code_blocks: true,
                                         no_intra_emphasis: true,
                                         tables: true
        )

        self.body_html= markdown.render(self.body)
      end
    end
  end
end