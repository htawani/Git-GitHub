**## Local and Remote Repository ##**  

**Local git repository** = on local machine file system  
**Remote git repository** = on remote ex: github.com  


**How to send files from local repository to remote repository / how to access remote repository?**  
So, we have two options:  
With the help of --> PAT and SSH  
--> PAT = Personal Access Token  
\The profile on github.com is secured profile, password protected profile

**Method 01 - with PAT**  
Get the personal access token  [One time process for individual remote repository]  
github.com > Display name > Settings > Developer settings >  
Personal access tokens > select token classic > Generate new token > classic >  
Note: token-name  
Expiration: 7 days  
Select scopes: select repo	[full control of private repositories]  
Generate token 

Now, copy the token and store safely as it will not appear again  

Copy the HTTPS URL of remote rempository  
Expand remote repository github.com > copy **HTTPS** URL  

Now, on local repository  
Switch to remote-repo-dir  
$ **cd dir-name**  
Check the current branch status  
$ **git init**  
$ **git status**  

Establish remote repository connection to local repo  
$ **git remote add orgin https://github.com/repo-account-name/repo-path.git**  
Check the connection status of remote repo to local repo  
$ **git remote -v**  

Now, access the remote repository with the hlep of (PAT) personal access key token  
$ **git remote set-url  origin https://**remote-repo-PAT**@github.com/repo-account-name/repo-path.git**  

Now, to push/pull data  
$ **git push origin master**  
$ **git pull origin master**

**Method 02 - with SSH**


**End of the session**
