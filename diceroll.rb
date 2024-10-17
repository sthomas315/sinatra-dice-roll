require "sinatra"
require "sinatra/reloader"

get ("/") do
  "
  <h1> Dice Roll Simulator </h1>
  <ul>
    <li><a href = \"/dice/2/6\" > "Roll two 6 sided dice"</a></li>
    <li><a href = \"dice/2/10\">"Roll two 10 sided dice"</a></li>
    <li><a href =\"dice/1/20\" ></a>"Roll one 20 sided dice"</li>
    <li><a href = \"dice/5/4\"></a>"Roll 5 4 sided dice"</li>
  </ul>
  "
end


get ("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  <h1> 2d6 </h1>
end

get ("/dice/2/10") do
  first_die_ten = rand(1..10)
  second_die_ten = rand(1..10)
  sum_ten = first_die_ten + second_die_ten
  outcome_ten = "You rolled a #{first_die_ten} and a #{second_die_ten} for a total of #{sum_ten}."

  <h1> 2d10 </h1>
end

get ("/dice/1/20") do
  first_die_twent = rand(1..20)
  outcome_twent = "You rolled a #{first_die_twent}"
  <h1> 1d20 </h1>
end

get ("/dice/5/4") do
  first_die_four = rand(1..4)
  second_die_four = rand(1..4)
  third_die_four = rand(1..4)
 fourth_die_four = rand(1..4)
  fifth_die_four = rand(1..4)
  sum_four = first_die_four + second_die_four + third_die_four + fourth_die_four + fifth_die_four
  outcome_four = "You rolled a #{first_die_four} and a #{second_die_four} and a #{third_die_four} and a #{fourth_die_four} and a #{fifth_die_four} for a sum of and a #{sum_four}
  <h1> 4d5 </h1>
end
