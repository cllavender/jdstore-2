module ProductsHelper
  def render_active(index)
    if index == 0
      "active"
    end
  end

  # 搜索标题内容高亮
  def render_highlight_title(product,query_string)
    excerpt_cont = excerpt(product.title, query_string, radius: 500)
    highlight(excerpt_cont, query_string)
  end

end
