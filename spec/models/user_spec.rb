require 'spec_helper'

describe User do
  it { should validate_presence_of :nombre }

  content "when user Carmen is Carmen" do
    it "should be from Paraguay" do
      carmen.country.should == "Paraguay"
    end
    
    
  end
end
