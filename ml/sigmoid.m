% you can use this in CLI by going to the right directory, run octave, and running sigmoid(1) or sigmoid([1,2,3])
function g = sigmoid(z)
  g = 1 ./ ( 1 + e .^ (-z) ) % function will return value of g
  % "sigmoid = ..." will not work here, 
  % but sigmoid(1) or sigmoid([1,2,3]) will work in CLI to get output
end