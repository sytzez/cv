# frozen_string_literal: true

class String
  def squish
    dup.tap do |s|
      s.gsub!(/[[:space:]]+/, ' ')
      s.strip!
    end
  end
end
