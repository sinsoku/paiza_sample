require_relative 'leap_year'

describe LeapYear do
  describe ".run" do
    describe "example.1" do
      let(:input) { ['4', '1000', '1992', '2000', '2001'] }
      let(:output) { ['1000 is not a leap year',
                      '1992 is a leap year',
                      '2000 is a leap year',
                      '2001 is not a leap year',] }
      before do
        LeapYear.stub(:gets).and_return(*input)
        output.each { |x| LeapYear.should_receive(:puts).with(x) }
      end
      it { LeapYear.run }
    end
  end

  describe ".leap?" do
    it { expect(LeapYear.leap?(1000)).to be_false }
    it { expect(LeapYear.leap?(1992)).to be_true }
    it { expect(LeapYear.leap?(2000)).to be_true }
    it { expect(LeapYear.leap?(2001)).to be_false }
  end

  describe ".msg" do
    context "n is a leap year" do
      before { LeapYear.stub(leap?: true) }
      it { expect(LeapYear.msg(0)).to eq '0 is a leap year' }
    end
    context "n is not a leap year" do
      before { LeapYear.stub(leap?: false) }
      it { expect(LeapYear.msg(0)).to eq '0 is not a leap year' }
    end
  end
end
