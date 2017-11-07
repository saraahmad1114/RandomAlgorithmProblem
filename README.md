# RandomAlgorithmProblem
Solved a random Algorithm Problem


//Assignment: Sort the characters in the following string:

//abcdefghijklmnopqrstuvwxyz_

//by the number of times the character appears in the following text (descending):

//Now take the sorted string, and drop all the characters after (and including) the _. The remaining word is the answer.

Step 1: In order to know how many times certain characters appear in the string, the best way would be to create a dictionary. The dictionary would have the character that would serve as the key and the integer value would serve as the value to the dictionary. The Integer value will indicate how many times the character appeared in the given string.

Created a frequency dictionary based on how many times certain character appear. Iterated over all the characters in the text string and for each character in the text string, locate the element with the same key in your dictionary and increment the value, if it doesn't yet exist in your dictionary, else create key value pair.

Step 2: The purpose of this second function is to create the sorted string. In order to do so I  initialized an empty string called sortedString, which is what I will return. Then I iterated over the frequency dictionary until the dictionary had no more elements. Within the loop, I searched to find the element with the max value amongst the values of the dictionary. I was able to do so by using the convenient dictionary.values.max() and when I found it I concatenated the key of the corresponding value from the dictionary (which is a character) to the sorted string variable and then removed the key/value pair from the dictionary. Initially I stored the count of the dictionary and created a counter variable, this counter variable was incremented for every time that it entered the while loop. The originalCount variable was used as my condition to keep going, once the counter was equal to the original count of the dictionary the condition becomes false and it exited out of the while loop, making sure the loop runs at least 28 times (27 from the alphabet letters and + 1 from the underscore). Enclosed was the for loop inside the while loop, so as to have access to the key and value of the dictionary. Used the built in max() function to find the max value in the dictionary using the dictionary.values.max, which isolate the values of dictionary in an convenient array.

Step 3: Take the sortedString and separate the string using the "_" character and then returned the first element in the array of strings that I separated. The components(separatedby:) function lets you separate the string into an array of strings and since the string portion that didn't contain the underscore was needed, the first element in the string array was needed, which was manuscript. 


