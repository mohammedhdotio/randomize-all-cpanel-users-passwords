# randomize-all-cpanel-users-passwords
If you recently acquaired a fleet of cPanel/WHM servers from another managed hosting provider I don't think its a good idea to leave your users passwords unchanged.

I created this ansible playbook to solve this issue and save all randomized passwords in files seperated by your servers inventory hostnames.

Make sure to change the path to generated passwords file along with password length from vars section of the playbook.

The passwords will be saved in your ansible controller machine in this format :
```code
cpanel-user:user-password
```

