require 'spec_helper'
require 'sudoku_solver.rb'

describe SudokuSolver do
  before(:each) do
    subject.load_game('sudoku.txt', 1)
  end
  context "for game #1" do
    describe ".potential_solutions(x, y)" do
      describe "returns an array of possible solutions" do
        describe "for row 0" do
          let(:row) { 0 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([4,5])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([4,5,7,8])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([3])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([4,9])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([2])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([1,4,7])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([6])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([5,7,8,9])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([5,7])
          end
        end

        describe "for row 1" do
          let(:row) { 1 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([9])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([2,4,6,7,8])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([4,7])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([3])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([4,7])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([5])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([7,8])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([2,7,8])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([1])
          end
        end

        describe "for row 2" do
          let(:row) { 2 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([2,5])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([2,5,7])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([1])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([8])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([7,9])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([6])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([4])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([2,3,5,7,9])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([2,3,5,7])
          end
        end

        describe "for row 3" do
          let(:row) { 3 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([3,4,5])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([3,4,5])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([8])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([1])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([3,4,5,6])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([2])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([9])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([3,4,5,6,7])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([3,4,5,6,7])
          end
        end

        describe "for row 4" do
          let(:row) { 4 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([7])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([1,2,3,4,5,9])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([4,9])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([4,5,9])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([3,4,5,6,9])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([4])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([1])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([1,3,4,5,6])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([8])
          end
        end

        describe "for row 5" do
          let(:row) { 5 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([1,3,4,5])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([1,3,4,5,9])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([6])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([7])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([3,4,5,9])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([8])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([2])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([1,3,4,5])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([3,4,5])
          end
        end

        describe "for row 6" do
          let(:row) { 6 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([1,3,4])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([1,3,4,7])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([2])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([6])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([4,7,8])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([9])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([5])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([1,4,7,8])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([4,7])
          end
        end

        describe "for row 7" do
          let(:row) { 7 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([8])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([1,4,6,7])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([4,7])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([2])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([4,5,7])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([3])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([1,7])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([1,4,6,7])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([9])
          end
        end

        describe "for row 8" do
          let(:row) { 8 }
          it "for column 0" do
            expect(subject.potential_solutions(row,0)).to eq([4,6])
          end
          it "for column 1" do
            expect(subject.potential_solutions(row,1)).to eq([4,6,7,9])
          end
          it "for column 2" do
            expect(subject.potential_solutions(row,2)).to eq([5])
          end
          it "for column 3" do
            expect(subject.potential_solutions(row,3)).to eq([4])
          end
          it "for column 4" do
            expect(subject.potential_solutions(row,4)).to eq([1])
          end
          it "for column 5" do
            expect(subject.potential_solutions(row,5)).to eq([4,7])
          end
          it "for column 6" do
            expect(subject.potential_solutions(row,6)).to eq([3])
          end
          it "for column 7" do
            expect(subject.potential_solutions(row,7)).to eq([2,4,6,7,8])
          end
          it "for column 8" do
            expect(subject.potential_solutions(row,8)).to eq([2,4,6,7])
          end
        end
      end
    end
  end
end