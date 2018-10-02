def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ";
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} ";
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} ";
end

def input_to_index (n) 
  input = n.to_i;
  return (input - 1);
end

def position_taken? (board, index)
  element = board[index];
  if (element == " " || element == "" || element == nil)
    return false;
  else 
    return true;
  end
end

def valid_move? (board, index)
  if (index.between?(0, 8) && !position_taken?(board, index))
    return true;
  else 
    return false;
  end
end