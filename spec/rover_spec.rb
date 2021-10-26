require 'spec_helper'
require 'rover'
RSpec.describe Rover do
  let(:direction) { North.new }
  let(:current_position) { [0,0] }
  let(:rover) { described_class.new(current_position, direction) }

  describe '#right_turn' do
    context 'when facing North' do
      it 'turns east' do
        expect(rover.right_turn).to be_a East
      end
    end
    context 'when facing East' do
      let(:direction) { East.new }
      it 'turns south' do
        expect(rover.right_turn).to be_a South
      end
    end
    context 'when facing South' do
      let(:direction) { South.new }
      it 'turns east' do
        expect(rover.right_turn).to be_a West
      end
    end
    context 'when facing West' do
      let(:direction) { West.new }
      it 'turns north' do
        expect(rover.right_turn).to be_a North
      end
    end
  end

  context 'When facing North' do
    let(:direction) { North.new}
      it 'turns east' do
        expect(rover.right_turn).to be_a East
      end
  end

  describe '#move' do
    context 'when facing north' do
      it 'move north' do
        expect(rover.move).to eq [1, 0]
      end
    end
  end

  describe '#move' do
    context 'when facing west' do
      it 'move west' do
        expect(rover.move).to eq [0, -1]
      end
    end
  end

  context 'When facing East' do
    let(:direction) { East.new }
      it 'move east' do
        expect(rover.move).to eq [1, 0]
      end
  end

  context 'When facing South' do
    let(:direction) { South.new }
      it 'move south' do
        expect(rover.move).to eq [0, -1]
      end
  end

  context 'when a command is sent into the rover one' do
    subject { described_class.new([0,0], North.new) }
    it 'must return the right state' do
      expect(subject.user_command("LMLMLMLMM").state).to eq "1 0 N"
    end
  end

  context 'when a command is sent into the rover two' do
    subject { described_class.new([0,0], North.new) }
    it 'must return the right state' do
      expect(subject.user_command("MMRMMRMRRM").state).to eq "2 2 N"
    end
  end
end