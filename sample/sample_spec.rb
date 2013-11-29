require_relative 'sample'

describe Sample do
  describe ".run" do
    describe "example.1" do
      let(:input) { ['nanoha', 'fate'] }
      let(:output) { ['hello, nanoha', 'hello, fate'] }
      before do
        Sample.stub(:gets).and_return(*input)
        output.each { |x| Sample.should_receive(:puts).with(x) }
      end
      it { Sample.run }
    end
  end
end
