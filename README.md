# Chef repo
Chef repository to hold roles/environments/databags/cookbooks for deploying basic infrastructure components needed to build software

## Jenkins
The jenkins cookbook installs and deploys jenkins master in a single node. To create a jenkins on a vagrant box, run the following comamnds

```
git clone git@github.com:bob2build/bob_infra.git
cd bob_infra
cd cookbooks/bob_jenkins
kitchen create
kitchen converge
```

The script will create a jenkins UI at http://10.1.1.10:8080
