## Fast-Print the parameters of executable scripts

`params.sh` is intented to print all the arguments scripts in a certain folder accepts.

For example the call in this git-repository results in:

```bash
./params.sh
params.sh [FOLDER]
```

As you can see, the script params.sh accepts one optional argument `FOLDER`.
The output is taken from the parsed `usage()`-function. 
If the script does not accept any further arguments `params.sh` prints the message:

```bash
test.sh no parameters needed
```

At the moment `params.sh`does not determine, if the scripts in the folder contains a `usage()`-function.

## How could you contribute?
1. [Fork this project][fork] to your account.
2. [Create a new branch][branch] for the improvements, you intend to make.
3. **Make the changements in your fork.**
4. [Send a pull-request][pr] from your fork’s branch to my `master` branch.
 
You can always use the web-interface to make the changes you want. It helps you automizing the workflow from above.

[fork]: http://help.github.com/forking/
[branch]: https://help.github.com/articles/creating-and-deleting-branches-within-your-repository
[pr]: http://help.github.com/pull-requests/