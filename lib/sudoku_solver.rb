class SudokuSolver
  attr_accessor :game_board

  def initialize
    self.game_board = []
  end

  def find_next_answer
    game_board.each_with_index do |row, index|
      row.each_with_index do |value, index2|
        next if value == 0
        solutions = potential_solutions(index, index2)
        if solutions.length == 1
          puts "Changing #{index + 1}, #{index2 + 1} to #{solutions}"
          game_board[index][index2] = solutions.first
          return true
        end
      end
    end
    false
  end

  def load_game(filename, game_number)
    filename = File.join(File.dirname(__FILE__), filename)
    game_number = sprintf('%02d', game_number)
    File.open(filename) do |file|
      while (line = file.gets.chomp)
        if line =~ /Grid #{game_number}/
          while (line = file.gets.chomp)
            break if line =~ /Grid/
            game_board << line.split('').map(&:to_i)
          end
          break
        end
      end
    end
  end

  def to_s
    game_board.map { |row| row.join('') }.join("\n")
  end

  def potential_solutions(row, column_number)
    if game_board[row][column_number] != 0
      [game_board[row][column_number]]
    else
      possible_answers = (1..9).to_a

      # Remove all the known numbers in the same row
      possible_answers = remove_impossible_answers(possible_answers, game_board[row])

      # Remove the known numbers
      possible_answers = remove_impossible_answers(possible_answers, column_values(game_board, column_number))

      # Remove all the known numbers in the same square
      possible_answers = remove_impossible_answers(possible_answers, square_values(game_board, row, column_number))
    end
  end

  private

  def remove_impossible_answers(possible_answers, items_to_remove)
    # possible_answers is an array of [1,2,3,4,5,6,7,8,9]
    # items_to_remove is an array with [2,3,5]
    # then we should return [1, 4, 6, 7, 8, 9]
    items_to_remove.each do |number|
      possible_answers.delete(number)
    end
    possible_answers
  end

  def column_values(game_board, column_number)
    # If called with game_board, 0
    #  (0, 0), (1,0), (2,0), etc.
    game_board.map do |row|
      row[column_number]
    end
  end

  def square_values(game_board, row, column_number)
    min_x, max_x = determine_min_max(row)

    min_y, max_y = determine_min_max(column_number)

    (min_x..max_x).map do |row_value|
      (min_y..max_y).map do |column_value|
        game_board[row_value][column_value]
      end
    end.flatten
  end

  def determine_min_max(number)
    if number <= 2
      [0, 2]
    elsif number <= 5
      [3, 5]
    else
      [6, 8]
    end
  end
end
