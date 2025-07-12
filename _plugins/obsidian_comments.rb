# _plugins/obsidian_comments.rb
require 'liquid'
require 'redcarpet'

# 自定义Markdown渲染器
class ObsidianRenderer < Redcarpet::Render::HTML
  def block_code(code, language)
    # 处理代码块
    super
  end

  def paragraph(text)
    # 检测并转换%%注释%%
    text.gsub!(/%%(.*?)%%/) { |match| "<span class=\"obsidian-comment\">#{$1}</span>" }
    "<p>#{text}</p>"
  end
end

# 注册自定义渲染器
class ObsidianMarkdown < Liquid::Tag
  def initialize(tag_name, text, tokens)
    super
    @text = text
  end

  def render(context)
    # 获取配置
    site = context.registers[:site]
    converter = site.find_converter_instance(Jekyll::Converters::Markdown)
    
    # 使用自定义渲染器
    renderer = ObsidianRenderer.new(hard_wrap: true)
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})
    
    # 渲染Markdown
    content = context[@text] || @text
    markdown.render(content)
  end
end

Liquid::Template.register_tag('obsidian_markdown', ObsidianMarkdown)