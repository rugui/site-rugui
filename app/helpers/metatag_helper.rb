module MetatagHelper
  def metatags_content_for(page)
    [:title, :description, :keywords].each do |metatag|
      content_for metatag, t("interface.pages.#{page}.metatags.#{metatag}")
    end
  end
end
