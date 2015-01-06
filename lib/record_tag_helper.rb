require 'action_view'

module ActionView
  module Helpers
    autoload :RecordTagHelper, 'action_view/helpers/record_tag_helper'
  end
end

ActiveSupport.on_load(:action_view) do
  include ActionView::Helpers::RecordTagHelper
end
