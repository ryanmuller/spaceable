require 'spec_helper'

describe Spaceable::MemoryRating do

  before(:each) do
    @user = User.create(:name => "Curious George")
    @component = Component.create(:name => "how to ride a bike") 

    @memory = Spaceable::Memory.create(:component => @component)
    @user.memories << @memory
    @quality = 4
    @memory.view(@quality)
    @memory_rating = @memory.memory_ratings.first
  end

  it "should be created when memories are rated" do
    @memory_rating.should_not be_nil
  end 
  
  it "should have the correct quality" do
    @memory_rating.quality.should == @quality
  end

  it "should belong to a memory" do
    @memory_rating.memory.should == @memory
  end
end
