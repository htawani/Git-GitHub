
**### Basic Git Useful Commands ###**

1/ Initialize git VCS and empty repository   
$ **cd absolute-dir-path**  
$ **git init**

2/ To check repository status  
$ **git status**

3/ To make file ready from untracked to staged  
$ **git add filename**

4/ To undo/remove file from staged to untracked  
$ **git rm --cached filename**

5/ To restore file from VCS to local filesystem  
$ **git restore filename**

6/ To commit the file, **git add filename** is mandatory  
$ **git add filename**  
$ **git commit -m “message”**

7/ To provide username and email addresss to git  
$ **git config --global user.name github-account-name**  
$ **git config --global user.email email-address**

8/ To check the status of working branch, indicated with *  
$ **git branch**

9/ To create separate branch instead to write code in production branch (or can say copy of actual working branch)  
$ **git checkout -b new-branch-name**  
$ **git status**

10/ To switch/checkout from present working branch  
$ **git checkout branch-name** 
$ **git status**

11/ To check log  
$ **git log --oneline**  

12/ To merge the change of separate-copy-branch to base-branch  
$ **git checkout branch-name-where-to-merge-separate-branch**  
$ **git status**  
$ **git merge branch-to-merge**  

**End of the Git Basic Session**






