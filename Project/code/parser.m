function result = parser(filename)
%     Converts .txt file stored at filename to an array of alpha-numeric characters
%     delimited by spaces.
%     filename shoule be a string specifying path of .txt file to be
%     parsed.
    
    A = textread(filename, '%s', 'delimiter', ' ');
    
%     converts all words to lower case
    A = lower(A);
    
%     function that locates non alpha-numeric characters
    f = @(str)str(isstrprop(str,'alphanum'));
    
%     Remove punctutation
    A = cellfun(f,A,'uniformOutput',false);
    result = char(A);


end