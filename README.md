# 1d-project-group_15

1d-project-group_15 created by GitHub Classroom

## Members

- [Carina Chu] (https://github.com/carinachu22)

## Collaborating

First, clone the repository using `git clone`   
```
git clone git clone https://github.com/50002-computation-structures/1d-project-group_15.git  
```

## Making New changes

Before you work on a new feature, create a new branch with this format `<name>-<featurename>` with the following commands

```
#Get updated master branch
git checkout master
git pull origin master

#Create new branch
git checkout -b <name>-<feature-name>

#Example:
git checkout master
git pull origin master
git checkout -b carina-readme

```

Now, you can make your edits.

To view changes in unstaged file, use `git diff`

## Update changes to Github

Step 1: Save your file on your local computer

Step 2: Stage your changes with `git add .`

Step 3: Commit your changes with a message

```
git commit -m "Insert your commit message"

#Example:
git commit -m "Changed the readme file"

```

Step 4: Push to your branch using `git push` command:

```
git push origin <name>-<feature-name>

#Example:
git push origin carina-readme

```

Step 5: Submit a Pull Request to the `master` branch using the GitHub website `Repo master page -> Pull Request -> New pull request`

## Update master branch and delete feature branch

After your pull request is successfully merged above, update your master branch with

```
git checkout master
git pull origin master

```

Delete your feature branch by:

```
git push origin <name>-<feature-name>

#Example:
git push origin carina-readme

```
