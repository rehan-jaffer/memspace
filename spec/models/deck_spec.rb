require 'rails_helper'

describe Deck, type: :model do

  it "contains many cards" do

    it { should have_many(:cards) }

  end

end
