require 'active_support'
require 'record_tag_helper/helper'

ActiveSupport.on_load(:action_view) do
  include ActionView::Helpers::RecordTagHelper
end
