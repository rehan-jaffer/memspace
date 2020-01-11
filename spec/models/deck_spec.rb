require 'rails_helper'

describe Deck, type: :model do

  it { should have_many(:cards) }

end
