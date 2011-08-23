module LayoutHelper

  def error_message(model)
    if model.errors.any?
      html = ""
      html << "<div id= 'error_explanation'>"
      html << "<h2>#{pluralize(model.errors.count, 'error')} no permitieron guardar estos cambios:</h2>"
      html << "<ul>"
      model.errors.full_messages.each do |msg|
        html <<"<li>#{msg}</li>"
      end
      html <<"</ul></div>"
      raw html
    end
  end

end
