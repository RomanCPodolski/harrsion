require 'parser/expression'

# A parster for propositional statements
# and simple mathematical expressions
module Parser
  class Const < Expression
    attr_reader :i

    def initialize(i)
      ArgumentError 'argument must be an integer' unless i.is_a? Integer
      @i = i.dup.freeze
      super "Const #{i}"
    end

    def eval
      @i
    end

    def self.parse(e)
      fail 'not yet implemented'
    end
  end
end
