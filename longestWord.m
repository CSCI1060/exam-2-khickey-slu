% Kevin Hickey

function [result] = longestWord(inputFile)
%
% inputFile specifies the file whose characters should
% be analyzed.
%
% Periods, commas, apostrophes, and other punctuation
% marks DO NOT count towards the length of a word.
% For example, in the sentence “The quick red fox
% jumped over the lazy brown dog.” the last word is
% considered to have a length of three (ignoring the
% period).
%
% If inputFile cannot be opened, the function will
% print a descriptive error message and return the
% value -1.
%
    fileID = fopen(inputFile, 'r');

    if fileID == -1
        -1
        error("There is no file with that name to analyze. Please try a different name.")
    end

    streak = 0;
    longest_streak = 0;

    while 1
        input = fread(fileID, 1);
        if length(input) == 0
            if streak > longest_streak
                longest_streak = streak;
            end

            break
        end
        
        if input == '?' || input == '.' || input == ' ' || input == '!' ...
        || input == '''' || input == ',' || input == 10
            if streak > longest_streak
                longest_streak = streak;
            end
            streak = 0;
        else
            streak = streak + 1;
        end 
    end

    result = longest_streak;
end