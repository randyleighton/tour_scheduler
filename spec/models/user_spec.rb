describe User do

  it { should validate_presence_of :email }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :phone }

  it "should have valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "should require a first name" do
    expect(FactoryGirl.build(:user, :first_name => "")).to_not be_valid
  end

end