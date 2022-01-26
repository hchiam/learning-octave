# Learning Octave

Just one of the things I'm learning. https://github.com/hchiam/learning

The [Octave programming language](https://en.wikipedia.org/wiki/GNU_Octave#Octave,_the_language) is mostly like MATLAB, but free and open source (GNU).

Try it online without installing: https://octave-online.net

Mac installation via Homebrew: `brew update; brew install octave`

Run in CLI: `octave`

Clean up CLI prompt (for the session only): `PS1('> ');`

The CLI also has autocomplete (type the few letters and hit tab).

Exit the CLI with `quit` or `exit`.

Learn more: https://octave.org/doc

## Example commands

Note: Octave starts indices at 1 (not 0).

```octave
% comment
PS1('> '); % to clean up the CLI prompts
1 == 2 % false, but prints out ans = 0
1 ~= 2 % true,  but prints out ans = 1
true && false % "AND", prints out ans = 0
true || false % "OR",  prints out ans = 1
3^2 % power function, not xor, prints out ans = 9
xor(1,0)
sqrt(10)
1+2; % semicolon suppresses printout
pi % built-in, rounded: 3.1416
format long % switch to show more decimals
format short % switch to show few decimals
a = [1 2; 3 4; 5 6] % 3 rows, 2 columns
v = 1:5             % [ 1       2       3       4       5      ]
v = 1:0.25:2        % [ 1.0000  1.2500  1.5000  1.7500  2.0000 ]

size(a) % [3 2]
size(a, 1) % 3 = rows
size(a, 2) % 2 = columns
length(a) % longest dimension

x = y = 1 % one-liner multiple assignment is allowed

rows = 2;
columns = 3;

zeros(rows, columns)
ones(rows, columns)
2*ones(rows, columns)

uniform_distribution_0_to_1 = rand(rows, columns)

variance = 1;
samples = 3;
normal_distribution = randn(variance, samples)

offset = 10;
scaling = 0.5;
bell_curve = randn(1, 1000) * scaling + offset;
hist(bell_curve) % CLI triggers a popup to show a histogram!
bins = 50
hist(bell_curve, bins) % updates the popup!

I = identity_matrix = eye(columns)

help eye % shows help on the eye function

current_folder = pwd

ls % you can cd and ls just like in a normal bash CLI

save filename.mat a % saves a to a file named filename.mat
delete filename.mat
save filename.mat a
% now if if quit and run octave again:
a % undefined
load filename.mat % now you have matrix a reloaded
a % has a value!

function returnVariableName = functionName() % functionName is what you'll use to call it
  returnVariableName = 1; % this tells octave what to return
  return; % return keyword can't return a value in octave
endfunction
```

## Shortcut alias for faster CLI typing

In your `~/.bash_profile`:

```sh
alias oc='octave'
```

(Don't forget to run `source ~/.bash_profile`.)

Then you can do:

```sh
oc example_script.m
```
