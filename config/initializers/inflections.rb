# Be sure to restart your server when you modify this file.

ActiveSupport::Inflector.inflections.clear
ActiveSupport::Inflector.inflections do |inflect|
  inflect.plural /([aeiou])([A-Z]|_|$)/, '\1s\2'
  inflect.plural /([rlnd])([A-Z]|_|$)/, '\1es\2'
  inflect.singular /([aeiou])s([A-Z]|_|$)/, '\1\2'
  inflect.singular /([rlnd])es([A-Z]|_|$)/, '\1\2'
  inflect.irregular 'tdoc', 'tdocs'
  inflect.irregular 'civil', 'civils'
  inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
end
