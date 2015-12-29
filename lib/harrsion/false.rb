require 'harrsion/formula'

# A parster for propositional statements
# and simple mathematical expressions
module Harrsion
  # A propositional 'False' value
  class False < Formula
    def initialize
      super 'False'
    end

    def eval(_valudation)
      false
    end

    def atoms
      []
    end

    def self.parse(e)
      fail 'not yet implemented'
    end
  end
end