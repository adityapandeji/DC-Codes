clc
clear all
close all
pkg load communications
n=input("Enter the length of array: ");
symbols=(input("Enter the symbol array (as space-separated values): "));
prob=(input("Enter the probability array (as space-separated values): "));
dict=shannonfanodict(symbols,prob);

disp("\nSymbol | Proability | Code");
disp("-------------------------------");
for i=1:n
 fprintf("%6d | %11.4f | %s\n", symbols(i), prob(i),num2str(dict{i}));
end
inputSig=[4 3 1 1 1 2 3 3 3];
code=shannonfanoenco(inputSig, dict);
decode=shannonfanodeco(code,dict);
disp("Input Signal: ");
disp(inputSig);
disp("Encoded Signal: ");
disp(code);
disp("Decoded Signal: ");
disp(decode);

