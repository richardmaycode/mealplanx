require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe) { build :recipe }
  let(:baby_friendly_recipe) { build :baby_friendly_recipe }
  let(:not_baby_friendly_recipe) { build :not_baby_friendly_recipe}
  let(:user) { build :user }  
  describe 'associations' do
    it { should belong_to :cuisine }
    it { should belong_to :meal }
    it { should have_many :ingredients }
    it { should have_many :instructions }
    it { should have_and_belong_to_many :users }
    it { should have_many :used_recipes }
    it { should have_many :favorite_recipes }
    it { should have_many :favorited_users }
    
  end

  describe 'validations' do 

    it "should be valid with valid attributes" do 
      expect(recipe).to be_valid
    end
    it { should define_enum_for(:cooking_length) }
    it "should be invalid without a name" do
      recipe.name = nil
      expect(recipe).to_not be_valid
    end

    it "should be invalid without a base" do
      recipe.base = nil
      expect(recipe).to_not be_valid
    end

    it "should be invalid without a cooking_length" do
      recipe.cooking_length = nil
      expect(recipe).to_not be_valid
    end

    it "should be invalid without servings" do 
      recipe.servings = nil
      expect(recipe).to_not be_valid
    end
  end

  describe "Methods" do
    context 'baby_bonus' do

      it 'should have bonus if baby friendly' do
        bonus = baby_friendly_recipe.baby_bonus
        expect(bonus).to be 50
      end
      it 'should not have a bonus if not baby friendly' do
        bonus = not_baby_friendly_recipe.baby_bonus
        expect(bonus).to be 0
      end
    end
    context 'base_bonus' do
      it 'should get a bonus if base is different' do
        bonus = recipe.base_bonus('Chicken')
        expect(bonus).to be 15000
      end
      it 'should not get a bonus if base is the same' do
        bonus = recipe.base_bonus('Beef')
        expect(bonus).to be 0
      end
    end
    context 'cuisine_bonus' do
      xit 'should have bonus if cuisine is different' do
        bonus = recipe.cuisine_bonus()
      end
      it 'should have no bonus if cuisine matches' do
        bonus = recipe.cuisine_bonus(Cuisine.first)
        expect(bonus).to be 0
      end
    end
    context 'left_over_mod' do
      xit 'should have a bonus if previous meal had leftovers' do
        
      end

    end
    context 'leftovers' do 
      it 'should have no left overs if servings match the users servings needed' do
        leftovers = recipe.leftovers(user)
        expect(leftovers).to be 0 
      end
    end
  end
end
