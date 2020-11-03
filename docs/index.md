## Welcome to Bioinformatics Scripts!

This is a resource containing scripts and sample data for learning various skills related to broadly understood bioinformatics. Most of the resources you find here were pulled together to run short training sessions at [Manaaki Whenua Landcare Research](https://www.landcareresearch.co.nz/).

## Shell scripting
[Materials](https://github.com/apawlik/bioinf-scripts/tree/master/shell-scripting) for learning intermediate skills in shell scripting.

## fastStructure data analysis

[Materials](https://github.com/apawlik/bioinf-scripts/tree/master/fastStructure) for learning how to use `plink` and `fastStructure` to analyse data.

## FAQ
Unix/Linux shell is a great tool but it has some quirks which frequently trip over new learners. Often these quirks are overlooked in training (since they are not the main objective) and they remain a *mistery*. Here's an incomplete list of these quirks with simplified explanations:

* What's the difference between running a script `bash script_name.sh` and `./script_name.sh`?

A script is essentially a programme. However, the computer needs to be told that. You can do that by making the script an executable file as usually a newly created script will be only `read` and `write` file but not executable. You can check the permissions that the script has running `ls -l script_name.sh`.  It may return something like `-rw-r--r--  1 aleksandra  staff  340 21 Sept 11:10 script_name.sh`. `r` and `w` show the file can be read or written to by certain users ([learn more about permissions](https://kb.iu.edu/d/abdb)). In order to run a script which permissions like that you have to explicitly tell the computer it needs to use `bash` (or other shell) to run it. Hence `bash script_name.sh`. But if you add executable permission to the file (`chmod u+x` - `u` is for current user and `x` is for executable), you can simply run it typing `./script_name.sh`.

* What is the difference between double (") and single quotes (') in shell commands? When to use which?

OK, this one requires a longer explanation and I think [this tutorial](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_03.html) does it pretty well. In short, if you are not using any special characters in your string, single and double quotes will behave the same way. However, when you start using special characters and escaping (i.e. "disabling" their special meaning) them, ' and " will have different effect. Single quotes ('') are used to preserve the literal value of each character enclosed within the quotes.  Using double quotes the literal value of all characters enclosed is preserved, except for the dollar sign, the backticks (backward single quotes, ``) and the backslash. Right... I think best is if you read the [this tutorial](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_03.html) and try out the examples they are showing! 

* Why is `curl` failing when downloading files, for example from GitHub? The syntax looks good, there's no error but no file is downloaded?

This may happen because you don't have the `-L` (`--location`) flag added after the `curl` command. Simplifying, the URL which you provide to curl (assuming it's a correct one) may include redirections and without the `-L` `curl` will not follow them to where the file is. It is often the case with GitHub. Having said all that, the reason why your `curl` doesn't work may be different and hopefully you will be able to find the answer online!
