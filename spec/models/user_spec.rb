require 'rails_helper'

describe User, type: :model do

  describe "adding cards for review" do

    before do
      @user = FactoryBot.create(:user)
      @deck = FactoryBot.create(:deck)
    end

    it "allows adding a card to a user's items for review" do
      @user.add_card(@deck.cards.first)
      expect(@user.repetitions.count).to eq 1
    end

  end

  describe "scheduled repetitions" do

    before do
      @user = FactoryBot.create(:user)
      @deck = FactoryBot.create(:deck)
    end

    it "allows a user to view scheduled repetitions" do
      expect { @user.repetitions_due }.to_not raise_error
    end

    context "with repetitions due" do
    
      before do
        Repetition.create(card: @deck.cards.last, user: @user, last_review: DateTime.now()-30.days, days_till_next: 15, reviews: 5)
      end

      it "returns the scheduled cards" do
        expect(@user.repetitions_due.size).to eq 1 
      end

    end

    context "with no repetitions due" do

      before do
        Repetition.create(card: @deck.cards.last, user: @user, last_review: DateTime.now()-14.days, days_till_next: 15, reviews: 5)
      end

      it "returns the scheduled cards" do
        expect(@user.repetitions_due.size).to eq 0
      end

    end

  end

end
