require 'spec_helper'
require 'lib/contextual_proc'

describe ContextualProc do
  let(:base) { 4 }

  describe '#apply' do
    context 'without arguments' do
      let(:p) { ContextualProc.new { number } }

      subject {
        number = base
        p.apply(binding)
      }

      it { expect(subject).to eql base }
    end

    context 'with arguments' do
      let(:multiplier) { 4 }
      let(:addition) { 2 }

      let(:p) {
        ContextualProc.new { |mult, add| number*mult+add }
      }

      subject {
        number = base
        p.apply(binding, multiplier, addition)
      }

      it { expect(subject).to eql base*multiplier+addition }
    end
  end
end
