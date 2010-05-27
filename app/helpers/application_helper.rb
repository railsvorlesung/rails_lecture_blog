# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  [:div, :ul].each do |method_name|
    define_method method_name do |*args, &block|
      content_tag method_name, args.first, &block
    end
  end
end
