require 'spec_helper'

describe User do

  before do 
  	@user = User.new(name: "Lance Vance", email: "lance@vance.com")
  end

  subject { @user }

  it { should respond_to(:name)}
  it { should respond_to(:email)}
  
  it { should be_valid }

  describe "When name is not present" do
  	before { @user.name = " " }
  	it { should_not be_valid }
  end

end