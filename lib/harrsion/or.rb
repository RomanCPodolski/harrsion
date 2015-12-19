require 'harrsion/formula'

# A parster for propositional statements
# and simple mathematical expressions
module Harrsion
  # A propositional logic 'or' value
  class Or < Formula
    attr_reader :p
    attr_reader :q

    def initialize(p,q)
      fail(ArgumentError, 'Argument must be a Formula') unless p.is_a?(Formula)
      fail(ArgumentError, 'Argument must be a Formula') unless q.is_a?(Formula)
      @p = p.dup.freeze
      @q = q.dup.freeze
      # super @p.a + " ∨ " + @q.a
      super "(#{@p} \\/ #{@q})"
    end

    def eval(v)
      p.eval(v) or q.eval(v)
    end

    def self.parse(e)
      fail 'not yet implemented'
    end
  end
end
