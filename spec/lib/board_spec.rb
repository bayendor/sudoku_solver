require 'spec_helper'
require 'sudoku_solver.rb'

describe SudokuSolver do
  describe ".load_game(filename, game_number)" do
    it "loads the appropriate game" do
      subject.load_game('sudoku.txt', 1)
      lines = subject.to_s.split("\n") #removed, not needed
      expect(lines.count).to eq(9)
      expect(lines).to include("003020600")
      expect(lines).to include("900305001")
      expect(lines).to include("001806400")
      expect(lines).to include("008102900")
      expect(lines).to include("700000008")
      expect(lines).to include("006708200")
      expect(lines).to include("002609500")
      expect(lines).to include("800203009")
      expect(lines).to include("005010300")
    end
  end

  describe ".to_s" do
    it "prints the current status of the board" do
      expected_output = <<-END_OF_OUTPUT
        003020600
        900305001
        001806400
        008102900
        700000008
        006708200
        002609500
        800203009
        005010300
      END_OF_OUTPUT
      expected_output.gsub!(/^\s+/, '').chomp!

      subject.load_game('sudoku.txt', 1)
      expect(subject.to_s).to eq(expected_output)
    end
  end
end