#this initializer lists those attributes of html which won't be sanitized when passed through sanitizer/ simple_format.
#it is possible to enable/ disable certain tags being sanitized here

Loomio::Application.config.after_initialize do |config|
  ActionView::Base.sanitized_allowed_attributes = 'id', 'class', 'target'
end
