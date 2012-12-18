#
# see https://gist.github.com/3019630
#
# you need `inspect' !
#
class ActionView::Template
  module Handlers
    class KramdownHandler
      def call(template)
        Kramdown::Document.new(template.source).to_html.inspect
      end
    end
  end

  register_template_handler :md, Handlers::KramdownHandler.new
  register_template_handler :markdown, Handlers::KramdownHandler.new
end
