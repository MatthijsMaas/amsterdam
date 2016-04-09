module MetaTagsHelper
  def meta_tag_description
    current_page.data.description || data.site.baseline
  end

  def meta_tag_image
    if current_page.data['banner_picture']
      path = image_path(current_page.data['banner_picture'])
    else
      path = image_path('group-photos/batch-20.jpg')
    end

    host_url(path)
  end

  def meta_tag_page_title
    if current_page.data.page_title
      "#{current_page.data.page_title} | #{data.site.name}"
    else
      data.site.name
    end
  end

  def meta_tag_site_name
    data.site.name
  end

  def meta_tag_title
    current_page.data.page_title || data.site.name
  end

  def meta_tag_twitter
    "@#{data.site.twitter}"
  end

  def meta_tag_url
    host_url(current_page.url)
  end
end
