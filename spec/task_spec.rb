require "../ruby/task1"

describe "task1" do
  it "should not be correct" do
    expect('({<})'.valid?).to be_falsey
    expect('({<>)'.valid?).to be_falsey
    expect('({}'.valid?).to be_falsey
    expect('(<>'.valid?).to be_falsey
  end

  it "should be correct" do
    expect('({<>})'.valid?).to be_truthy
    expect('()'.valid?).to be_truthy
    expect('{}'.valid?).to be_truthy
    expect('<>'.valid?).to be_truthy
    expect('({})'.valid?).to be_truthy
    expect('<()>'.valid?).to be_truthy
  end
end