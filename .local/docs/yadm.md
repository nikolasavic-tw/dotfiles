## YADM

### Alternative files
* To switch between alternative files  
`yadm config local.class work`  
`yadm config local.class personal`   

* If you changed the `.gitconfig` file in the process due to class switches, you'll need to restore the appropriate file for the current class  
`yadm checkout .gitconfig`


### Multiple Github Accounts
If you use multiple github accounts there are other considerations
  * The `.gitconfig` file is used only to determine which account the commit is signed with
  * When pushing your code, you need to set up your ssh config file to include both accounts and then configure the remote upstreams to use the correct account:
    * ```
      Host github-1
        Hostname github.com
        User git
        IdentifyFile /Users/me/.ssh/personal_private_key_1

      Host github-2
        Hostname github.com
        User git
        IdentifyFile /Users/me/.ssh/personal_private_key_2
    ```
    * Set remote upstream with:  
    `yadm remote set-url origin github-1:githubAccountName/MyRepo.git`

### Managing a forked dotfile repo
If you fork your dotfile repo, you might want to occasionally pull updates from it
  * Set the fork source repo as a remote upstream
    * ref: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/configuring-a-remote-repository-for-a-fork
  * Fetch from upstream
    * ref: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork
  * Merge or cherry pick commits
