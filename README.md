# 1d-project-group_15

1d-project-group_15 created by GitHub Classroom

## Collaborating

First, clone the repository using `git clone`

## Making New changes

When you work on a new feature, create a new branch with this format `<name>-<featurename>` with the following commands

```
#Get updated main branch
git checkout main
git pull origin main

#Create new branch
git checkout -b <name>-<feature-name>

#Example:
git checkout main
git pull origin main
git checkout -b carina-readme

```

## Update changes to Github

Step 1: Stage your changes with`git add.`

Step 2: Commit your changes with a message

```
git commit -m "Insert your commit message"

#Example:
git commit -m "Changed the readme file"

```

Step 3: Push to your branch using `git push` command:

```
git push origin <name>-<feature-name>

#Example:
git push origin carina-readme

```

Step 4: Submit a Pull Request to the `main` branch using the GitHub website `Repo main page -> Pull Request -> New pull request`

## Update main branch and delete feature branch

After your pull request is merged above, update your main branch with

```
git checkout main
git pull main

```

Delete your feature branch by:
