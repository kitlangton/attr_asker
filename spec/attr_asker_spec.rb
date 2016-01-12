require 'spec_helper'

describe AttrAsker do
  it 'has a version number' do
    expect(AttrAsker::VERSION).not_to be nil
  end

  describe "generated interrogative methods" do

    before(:all) do
      class Test
        attr_asker :on, :off, :truthy, :falsy

        def initialize
          @on = true
          @off = false
          @truthy = 5
          @falsy = nil
        end
      end
    end

    let(:test_class) { Test.new }

    it 'returns true if the instance variable is true' do
      expect(test_class.on?).to eq true
    end

    it 'returns false if the instance variable is false' do
      expect(test_class.off?).to eq false
    end

    it 'returns true if the instance variable is truthy' do
      expect(test_class.truthy?).to eq true
    end

    it 'returns false if the instance variable is falsy' do
      expect(test_class.falsy?).to eq false
    end
  end
end
