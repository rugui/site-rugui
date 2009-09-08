module TitledTagHelper
  def titled_image_tag(source, options = {})
    image_tag(source, titled_tag_options(options))
  end

  private
    def titled_tag_options(options)
      options.reverse_merge({
        :alt => options[:title],
        :title => options[:title]
      })
    end
end
