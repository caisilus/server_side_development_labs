module ApplicationHelper
  def nav_link(name:, path:, provided_name:)
    if name == provided_name
      link_to name, path, class: "active"
    else
      link_to name, path
    end
  end

  def banner_for(name:, path:)
    render partial: "shared/banner", locals: {name:, path:}
  end
end
