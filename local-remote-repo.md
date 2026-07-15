**## Local and Remote Repository ##**  

**Local git repository** = on local machine file system  
**Remote git repository** = on remote ex: github.com  

**How to send files from local repository to remote repository / how to access remote repository?**  
So, we have two options:  
With the help of --> PAT and SSH  
--> PAT = Personal Access Token  
\The profile on github.com is secured profile, password protected profile

-----
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


-------
**Method 02 - with SSH**  

**To fetch new remote repository to local fielsystem**  
**Clone** means to copy remote git repository to local git repository  
So, to clone (copy) the remote repository to local filesystem  
Mandatory: **SSH key**

**Prerequisite**  
1/ private-key on local    
2/ public-key on remote  

**How to create private-key-pair on local machine**    
$ **ssh-keygen**  
$ **cd .ssh**  
$ **ls**  
id_ed12345 id_12345.**pub**    
$ **cat id_12345.pub**  
--> Copy the entire key  

Now, open URL >> github.com > Settings > SSH and GPG keys > New SSH key > Enter key Name >
Paste key and click Add SSH key  

**To clone (copy) the remote repository on local machine**  
We require remote repository SSH path  

github.com > expand repository folder to be cloen > Code > copy **SSH path**  

Now, on local machine  
$ **cd dir-where-to-clone-remote-repo**  

$ git clone **git@github.com:remote-repo-account-name/repo-path.git**  
$ **ls**  
$ **cd dir**  
$ **ls**  

Remote repository cloned on local, now as the owner of this repository, you can push in this repository with the SSH key without any personal access token  

$ **vim readme.md**   -->> do some change in file and save it   
$ **git status**  
$ **git diff**    
$ **git add readme.md**  
$ **git status**  
$ **git commit -m "Comment of last change"**  
$ **git push origin master**  

**_NOTE:_**
If you want to clone others remote repository on local then the **primary requirement is to fork** others remote repository **into own remote repository** and _then clone that repository on local_

**SSH key is mandatory for remote repository**, that’s the reason to fork the remote repository into own remoter repository

**How to fork**  
**Fork** means to copy remote git repository to own git remote repository (no local)  
Expand others remote repository > click on fork  
It will added in you remote repository (you will be the owner of this)  
Now, clone this forked repository in your local machine  

----

To pull remote repo update on local clone (forked) repo
$ **cd to clone directory**  
$ **git remote -v**  
$ **git pull**  

**End of the session**
