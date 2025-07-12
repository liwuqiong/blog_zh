# _plugins/obsidian_comments.rb
module Jekyll
  class ObsidianCommentConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /^\.md$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      # 将%%注释%%替换为HTML标签
      content.gsub(/%%(.*?)%%/) { |match| "<span class=\"obsidian-comment\">#{$1}</span>" }
    end
  end
end