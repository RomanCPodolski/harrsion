require 'harrsion/formula'

# A parster for propositional statements
# and simple mathematical expressions
module Harrsion
  # A propositional logical 'impicates'
  class Imp < Formula
    attr_reader :p
    attr_reader :q

    def initialize(p,q)
      fail(ArgumentError, "Argument must be a Formula p:#{p}") unless p.is_a?(Formula)
      fail(ArgumentError, "Argument must be a Formula q:#{q}") unless q.is_a?(Formula)
      @p = p.dup.freeze
      @q = q.dup.freeze
      super "(#{@p} => #{@q})"
    end

    def eval(v)
      not(p.eval(v)) or (q.eval(v))
    end

    def self.parse(e)
      fail 'not yet implemented'
    end
  end
end
