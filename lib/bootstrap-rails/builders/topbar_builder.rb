module Bootstrap
  module Builders
    class TopbarBuilder
      attr_accessor :template, :name, :items

      def initialize(template, options = {}, &proc)
        @template, @items = template,  []
        render(options.delete(:html), &proc)
      end

      def render(options, &proc)
        buffer = template.capture(self, &proc)
        template.concat(wrapper(buffer))
      end

      def wrapper(buffer)
        template.content_tag(:div, class: "topbar", "data-dropdown" => "dropdown") do
          template.content_tag(:div, class: "topbar-inner") do
            template.content_tag(:div, buffer,class: "container")
          end
        end
      end

      def brand_name(name,link = "#",options = {})
        template.link_to name, link, class: 'brand'
      end

      def nav(options = {},&block)
        buffer = template.capture(self, &proc)
        template.content_tag(:ul,buffer, class: "nav") 
      end

      def second_nav(options = {},&block)
        buffer = template.capture(self, &proc)
        template.content_tag(:ul,buffer, class: ["nav","secondary-nav"])
      end

      def dropdown(title,options = {},&proc)
        buffer = template.capture(self, &proc)
        template.content_tag(:li,class: 'dropdown') do
          (template.link_to title,"#",class: 'dropdown-toggle') << template.content_tag(:ul,buffer, class: "dropdown-menu")
        end
      end

      def item(title,link,options = {})
        template.content_tag(:li,template.link_to(title,link))
      end

    end
  end
end

