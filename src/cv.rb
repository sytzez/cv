# frozen_string_literal: true

require 'prawn'

class CV
  include Prawn::View

  def self.render(filename, &) = new.tap { it.instance_eval(&) }.save_as(filename)

  def initialize
    font_families.update(
      'Header' => {
        normal: 'fonts/Figtree-Regular.ttf'
      },
      'Text' => {
        normal: 'fonts/Roboto-Light.ttf',
        condensed: 'fonts/Roboto_Condensed-Regular.ttf'
      }
    )
  end

  # @document is used internally by Prawn::View
  def document = @document ||= Prawn::Document.new(page_size: 'A4', margin: [20, 20])

  def header(*, sub:, info:)
    cursor.tap do |y|
      font('Header', size: 24) { text(*) }
      small_gap
      mid_condensed { text(sub) }

      condensed { text_box(info, at: [0, y], align: :right, leading: 2) }
    end
    large_gap
  end

  def section(*, &)
    font('Header', size: 20) { text(*) }
    mid_gap
    yield
  end

  def job(*, at:, time:, tech:, link: nil, &)
    cursor.tap do |y|
      mid_condensed do
        text(*)
        text_box(at, at: [290, y])
        text_box(time, at: [400, y], align: :right)
      end
    end
    small_gap
    cursor.tap do |y|
      condensed do
        text(tech)
        text_box(link, at: [0, y], align: :right) if link
      end
    end
    mid_gap
    yield
    large_gap
  end

  def one_liner(*, description:, time:, tech: nil, split_at: 120)
    cursor.tap do |y|
      condensed { text(*) }
      light { text_box(description, at: [split_at, y]) }
      condensed { text_box(tech, at: [0, y], width: bounds.right - 45, align: :right) } if tech
      condensed { text_box(time, at: [0, y], align: :right) }
    end
    small_gap
  end

  def paragraph(*)
    light { text(*) }
    small_gap
  end

  def bullet(content)
    light { text "• #{content}" }
    small_gap
  end

  def footnote(content)
    condensed { text content, align: :center }
  end

  def light(&) = font('Text', size: 12, &)
  def mid_condensed(&) = font('Text', style: :condensed, size: 16, &)
  def condensed(&) = font('Text', style: :condensed, size: 12, &)

  def small_gap = move_down 2
  def mid_gap = move_down 4
  def large_gap = move_down 10
end
