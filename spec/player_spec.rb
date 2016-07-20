require 'player'
describe Player do

  describe '#return_name'do
    it "returns a players name" do
      expect(subject.return_name).to eq('Albie')
    end
  end

end
