require 'satre/formula'

module Satre
  class And < Formula
    attr_reader :left_conjunct
    attr_reader :right_conjunct

    def initialize(left_conjunct, right_conjunct)
      fail(ArgumentError, 'Argument must be a Formula') unless left_conjunct.is_a?(Formula)
      fail(ArgumentError, 'Argument must be a Formula') unless right_conjunct.is_a?(Formula)
      @left_conjunct = left_conjunct.dup.freeze
      @right_conjunct = right_conjunct.dup.freeze
      super "(#{@left_conjunct} ∧ #{@right_conjunct})"
    end

    def eval(valudation)
      left_conjunct.eval(valudation) && right_conjunct.eval(valudation)
    end

    def atoms
      atoms = left_conjunct.atoms + right_conjunct.atoms
      atoms.uniq || []
    end
  end
end
