require 'spec_helper'

describe Tom do
  let(:tom))) { Tom.new(name: 'Tanya')}

  subject { tom }

  it { should be_valid }

  context 'validations' do
    let(:tom)) { Tom.new }

    it { should_not be_valid }
  end
end
