# position of colors for the codemaker
$cm_Positions = [0, 0, 0, 0]

# print cm array
def print_Cm_Positions
  p $cm_Positions
end
# position of colors for the codebreaker
$cb_Positions = [1, 1, 1, 1]

# print cm array
def print_Cb_Positions
  p $cb_Positions
end

# put all colors under the same class
class Color
  def initialize(color)
    @color = color
  end

  def blue
    @color = 'Blue'
  end

  def red
    @color = 'Red'
  end

  def green
    @color = 'Green'
  end

  def yellow
    @color = 'Yellow'
  end

  def white
    @color = 'White'
  end

  def black
    @color = 'Black'
  end
end

# create instances of colors per position for the codemaker
cm_p1 = Color.new(cm_p1)
cm_p2 = Color.new(cm_p2)
cm_p3 = Color.new(cm_p3)
cm_p4 = Color.new(cm_p4)

# create instances of colors per position for the codebreaker
$cb_p1 = Color.new($cb_p1)
$cb_p2 = Color.new($cb_p2)
$cb_p3 = Color.new($cb_p3)
$cb_p4 = Color.new($cb_p4)

# check if codemaker asigned the positions colors
$cm_asignment = 0

print_Cm_Positions

# ask for positions from the codemaker
until $cm_asignment == 1

  # asign user input
  puts 'Codemaker, asign colors per positions (p1red)'
  cm_input = gets.chomp

  # modify color based on input
  case cm_input
  when 'p1red'
    $cm_Positions[0] = cm_p1.red
    puts 'Position 1 is now Red!'
  when 'p1blue'
    $cm_Positions[0] = cm_p1.blue
    puts 'Position 1 is now Blue!'
  when 'p1yellow'
    $cm_Positions[0] = cm_p1.yellow
    puts 'Position 1 is now Yellow!'
  when 'p1green'
    $cm_Positions[0] = cm_p1.green
    puts 'Position 1 is now Green!'
  when 'p1black'
    $cm_Positions[0] = cm_p1.black
    puts 'Position 1 is now Black!'
  when 'p1white'
    $cm_Positions[0] = cm_p1.white
    puts 'Position 1 is now White!'

  when 'p2red'
    $cm_Positions[1] = cm_p2.red
    puts 'Position 2 is now Red!'
  when 'p2blue'
    $cm_Positions[1] = cm_p2.blue
    puts 'Position 2 is now Blue!'
  when 'p2yellow'
    $cm_Positions[1] = cm_p2.yellow
    puts 'Position 2 is now Yellow!'
  when 'p2green'
    $cm_Positions[1] = cm_p2.green
    puts 'Position 2 is now Green!'
  when 'p2black'
    $cm_Positions[1] = cm_p2.black
    puts 'Position 2 is now Black!'
  when 'p2white'
    $cm_Positions[1] = cm_p2.white
    puts 'Position 2 is now White!'

  when 'p3red'
    $cm_Positions[2] = cm_p3.red
    puts 'Position 3 is now Red!'
  when 'p3blue'
    $cm_Positions[2] = cm_p3.blue
    puts 'Position 3 is now Blue!'
  when 'p3yellow'
    $cm_Positions[2] = cm_p3.yellow
    puts 'Position 3 is now Yellow!'
  when 'p3green'
    $cm_Positions[2] = cm_p3.green
    puts 'Position 3 is now Green!'
  when 'p3black'
    $cm_Positions[2] = cm_p3.black
    puts 'Position 3 is now Black!'
  when 'p3white'
    $cm_Positions[2] = cm_p3.white
    puts 'Position 3 is now White!'

  when 'p4red'
    $cm_Positions[3] = cm_p4.red
    puts 'Position 4 is now Red!'
  when 'p4blue'
    $cm_Positions[3] = cm_p4.blue
    puts 'Position 4 is now Blue!'
  when 'p4yellow'
    $cm_Positions[3] = cm_p4.yellow
    puts 'Position 4 is now Yellow!'
  when 'p4green'
    $cm_Positions[3] = cm_p4.green
    puts 'Position 4 is now Green!'
  when 'p4black'
    $cm_Positions[3] = cm_p4.black
    puts 'Position 4 is now Black!'
  when 'p4white'
    $cm_Positions[3] = cm_p4.white
    puts 'Position 4 is now White!'

  when 'done'
    puts 'Codemaker positions are set!'
    break
  else
    puts 'Invalid Input! Please use p$number$color or done when you selected all colors'
  end

  # show cm colors
  print_Cm_Positions

end

print_Cm_Positions

# codemaker win asignment
$codemaker_Wins = 0

# codebreaker win asignment
$codebreaker_Wins = 0

# draw asignment
$draw = 0

# codebreaker asigns the colors and plays until all green or until turn time is up
def codebreaker_Guess
  # cb asignment
  $cb_asignment = 0

  until $cb_asignment == 1

    # asign user input
    puts 'Codebreaker, asign colors per positions (p1red)'
    cb_input = gets.chomp

    # modify color based on input
    case cb_input
    when 'p1red'
      $cb_Positions[0] = $cb_p1.red
      puts 'Position 1 is now Red!'
    when 'p1blue'
      $cb_Positions[0] = $cb_p1.blue
      puts 'Position 1 is now Blue!'
    when 'p1yellow'
      $cb_Positions[0] = $cb_p1.yellow
      puts 'Position 1 is now Yellow!'
    when 'p1green'
      $cb_Positions[0] = $cb_p1.green
      puts 'Position 1 is now Green!'
    when 'p1black'
      $cb_Positions[0] = $cb_p1.black
      puts 'Position 1 is now Black!'
    when 'p1white'
      $cb_Positions[0] = $cb_p1.white
      puts 'Position 1 is now White!'

    when 'p2red'
      $cb_Positions[1] = $cb_p2.red
      puts 'Position 2 is now Red!'
    when 'p2blue'
      $cb_Positions[1] = $cb_p2.blue
      puts 'Position 2 is now Blue!'
    when 'p2yellow'
      $cb_Positions[1] = $cb_p2.yellow
      puts 'Position 2 is now Yellow!'
    when 'p2green'
      $cb_Positions[1] = $cb_p2.green
      puts 'Position 2 is now Green!'
    when 'p2black'
      $cb_Positions[1] = $cb_p2.black
      puts 'Position 2 is now Black!'
    when 'p2white'
      $cb_Positions[1] = $cb_p2.white
      puts 'Position 2 is now White!'

    when 'p3red'
      $cb_Positions[2] = $cb_p3.red
      puts 'Position 3 is now Red!'
    when 'p3blue'
      $cb_Positions[2] = $cb_p3.blue
      puts 'Position 3 is now Blue!'
    when 'p3yellow'
      $cb_Positions[2] = $cb_p3.yellow
      puts 'Position 3 is now Yellow!'
    when 'p3green'
      $cb_Positions[2] = $cb_p3.green
      puts 'Position 3 is now Green!'
    when 'p3black'
      $cb_Positions[2] = $cb_p3.black
      puts 'Position 3 is now Black!'
    when 'p3white'
      $cb_Positions[2] = $cb_p3.white
      puts 'Position 3 is now White!'

    when 'p4red'
      $cb_Positions[3] = $cb_p4.red
      puts 'Position 4 is now Red!'
    when 'p4blue'
      $cb_Positions[3] = $cb_p4.blue
      puts 'Position 4 is now Blue!'
    when 'p4yellow'
      $cb_Positions[3] = $cb_p4.yellow
      puts 'Position 4 is now Yellow!'
    when 'p4green'
      $cb_Positions[3] = $cb_p4.green
      puts 'Position 4 is now Green!'
    when 'p4black'
      $cb_Positions[3] = $cb_p4.black
      puts 'Position 4 is now Black!'
    when 'p4white'
      $cb_Positions[3] = $cb_p4.white
      puts 'Position 4 is now White!'

    when 'done'
      puts 'Codebreaker positions are set!'
      break
    else
      puts 'Invalid Input! Please use p$number$color or done when you selected all colors'
    end

    # show cb colors after selection
    print_Cb_Positions

  end
end

# codebreaker instructions
puts 'Codebreaker, asign each position a color ex. p1red, p2blue'
puts 'Match = color is in that position'
puts 'Present = color is somewhere in that interval'
puts 'Unasigned = color is not present at all'

# turns counter
turn_Counter = 10

# codebreaker inputs colors until it matches codemaker's selection
until $codebreaker_Wins == 1 || $codemaker_Wins == 1 || $draw == 1

  # get input from codebreaker
  codebreaker_Guess

  # verify what colors match
  if $cb_Positions[0] == $cm_Positions[0]
    $cb_Positions[0] = "Match = #{$cm_Positions[0]}"
  elsif $cm_Positions.include?($cd_Positions[0]) &&
        $cd_Positions[0] != $cm_Positions[0]
    $cb_Positions[0] = 'Present'
  else
    $cb_Positions[0] == 'Unasigned'
  end

  # show cb colors after match
  print_Cb_Positions

  # subtract  the turns until 0 so the game can end
  turn_Counter -= 1
end
