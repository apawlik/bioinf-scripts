### Escaping characters

Special characters in shell are 
~ \ / $ ? ' " ` * && & || | ; [ ] { } () > < 
also: space, tab, enter ("invisible" to human eye)

They have special meaning in shell and so using them as file or directory names is either impossible or highly discouraged (you can use space in file names but it will give you a headache likely in the future).
Don't use these special characters in variable names in shell (usually you won't be able to anyways).
If you are getting some weird errors or unexpected behaviour of commands, check if you aren't using any of these special characters.

But how to deal with them when you have to use them (eg. legacy file naming)?
You will need to *escape* them (escape their special meaning).

How to do that?
Let's try space:

Our One Drive is generally available via: *OneDrive - MWLR*  2 spaces in the name. Likely more subdirectories with spaces inside (which is justified since we nowadays generally don't have to worry about them...until we need to use shell).

So what if you have data on One Drive and want to write some shell scripts to run on your laptop to use this data? How to manage the path?

Most moden terminals will come with some help:
(try using Tab completion)

```
$ cd OneDrive\ -\ MWLR/
``` 

The space characters are escaped with **\\**   (backslash), which BTW is another special character...for escaping special characters.

```
$ ls OneDrive\ -\ MWLR/Data/2.12\ IP\ Assessment.pdf 
```

Even more spaces.

Another way to deal with special characters inside the path (filenames) is to wrap everything into quotation marks.

```
"OneDrive - MWLR/Data/2.12 IP Assessment.pdf"
``` 

**EXERCISE**<br>
taken from [here](https://www.oreilly.com/library/view/learning-the-bash/1565923472/ch01s09.html)

`echo` command literally echos the string that follows it <br>
a) What happens when you type `echo 2 * 3 > 5 is a valid inequality.`? Why? <br>
b) Modify the above command using only escape (backslash) so that as a result you see *2 * 3 > 5 is a valid inequality.* on the screen

### Quotation marks
There are just a few things we should look at when dealing with quotation marks in shell.
We can use either single ' or double quotes " to wrap strings that contain special characters. You need to be consistent opening and closing with the same quotation mark.

```
$ echo '2 * 3 > 5 is a valid inequality.'
$ echo "2 * 3 > 5 is a valid inequality."
```
All good.

It seems that " and ' have the same effect but it's not quite like that.


Double quotes (") are sometimes called weak quotes.

```
$ echo "A quote is \", backslash is \\, backtick is \`."
```

BUT

```
$ echo 'A quote is \", backslash is \\, backtick is \`.'
```

What is the difference?

Another example:

```
$ export X=5
$ echo "A few spaces are    and dollar is \$. \$X is ${X}."
```

and now:

```
$ echo 'A few spaces are    and dollar is \$. \$X is ${X}.'
```


### Continuing lines

Use the backslash \

```
 echo The Caterpillar and Alice looked at each other for some \ 
> time in silence: at last Caterpillar took the hookah out of its \
> mouth, and addressed her in a languid, sleepy voice.
```

### Parameters 
(from [shell scripting tutorial](https://www.shellscript.sh/variables2.html))

There are a set of variables which are set for you already, and most of these cannot have values assigned to them.
These can contain useful information, which can be used by the script to know about the environment in which it is running.

* The variable $0 is the basename of the program as it was called.
* $1 .. $9 are the first 9 additional parameters the script was called with.
* if you want to use more than 9 parameters, write them with curly brackets ${10}, ${11} or with double quotation marks "$11" (note the difference in the position of the $ sign)

* The variable $@ is all parameters starting from $1 ... 
* The variable $*, is similar, but does not preserve any whitespace, and quoting, so "File with spaces" becomes "File" "with" "spaces". This is similar to the echo stuff we looked at in A First Script. As a general rule, use $@ and avoid $*.
* $# is the number of parameters the script was called with. 


**Using variables which contain special characters**

(script: )

* How would you pass a parameter which is a special character?
* What happens when you try to pass parameter in quotation signs? Try passing these parameters: <br>
      a)  " hello \\' "  
      b) ' hello " '


### Trivia (?)

* stats
shows you in a much more detailed and accessible format the metadata about the file/directory ( `$stats filename`)

* rename
[batch rename files](https://linuxhandbook.com/rename-multiple-files/)

* [shebang](https://www.shellscript.sh/tips/join/index.html)

* join
[see here](https://www.shellscript.sh/tips/join/index.html)
