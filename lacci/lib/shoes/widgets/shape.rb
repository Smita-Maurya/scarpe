# frozen_string_literal: true

require "scarpe/wv/shape_helper"

module Shoes
  class Shape < Shoes::Widget
    include ShapeHelper
    display_properties :left, :top

    def initialize(left: nil, top: nil, path_commands: nil, &block)
      @left = left
      @top = top

      super()
      create_display_widget

      instance_eval(&block) if block_given?
    end
  end
end