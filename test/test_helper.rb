# frozen_string_literal: true

require 'bundler/setup'
require 'minitest/autorun'
require 'mocha/setup'

require 'action_view'
require 'active_support/core_ext/kernel/reporting'
require 'active_model'

require 'record_tag_helper'

silence_warnings do
  Encoding.default_internal = "UTF-8"
  Encoding.default_external = "UTF-8"
end

module RenderERBUtils
  def render_erb(string)
    @virtual_path = nil

    template = ActionView::Template.new(
      string.strip,
      "test template",
      ActionView::Template::Handlers::ERB,
      {format: :html, locals: []}
    )
    self.render(template: template)
  end
end
