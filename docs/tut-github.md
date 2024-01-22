# GitHub and Git Workflows

This page outlines four types of workflow that use GitHub for managing versions of your work and/or for collaborating with others on a project.

1. Solo no branching workflow; the simplest use of GitHub as a repository for your own work only.
2. Solo with branch and merge to manage your own development of features.
3. Sharing but with no branching (not ideal).
4. Fork & Pull Workflow.

For an introduction to Git and version control, see the page [Git Intro](tut-git-intro.md).

## 1. Solo, no branching workflow

The simplest use of GitHub as a repository for your own work only, with local editing.

1. In your GitHub account, use the big green **New** button to make a new blank repository.
   * It will ask you to name it, describe it briefly, declare it as public or private
   * Also you should answer the "initialize this repository" by adding README and license files. (The "BSD 3-Clause License" is OK.) These two should be included as a matter of good practice.
   * a `.gitignore` file is not needed yet, but may be added later.
2. Update the README.md file
   * Click the README.md file
   * Click the edit pencil icon
   * Add a line or two
   * Below the edit box you will see "**Commit changes**" information. Describe the change in the top one-line box, add optional info if you like, check email, be sure you pick "**Commit directly to the master branch**" and click the **Commit changes** button.
3. That's all that is necessary. Work can be carried out within the GitHub environment. Add new or upload files, edit text files (MarkDown or .md files or code, etc.), commit for version control, and so on. Normally you will work on your local computer, therefore the next step is to clone this repo to your local computer.
4. If not already done, install Git version control system on your own computer. See the [git intro page](./tut-git-intro.md).
5. There are GUIs for all platforms, but it is "safer" to start using the command line, and move to a graphical user interface once you are able to work from the command line.

---

## 2. Solo with branch and merge

No collaboration but use of branches to "contain" your own development of features. Here's a typical workflow:

* List all local branches: `git branch`. Or list all branches, local and remote: `git branch -av`
* Create a new branch called _new-branch_: `git branch new-branch`
* Switch to the branch _new-branch_ and update the working directory: `git checkout new-branch`
* Do all your work in this new branch. Files in working directories will reflect this work while files remaining in the other branch will not be visible but are not lost. You can revert to the other branch simply by using `git checkout branchname` again. All branches will remain available this way until they are deleted, as below.
* Merge _branch-a_ into _branch-b_. Do this when the stuff you were figuring out in the "b" branch is ready to become part of the code or product in the "a" branch.

```
   git checkout branch-b
   git merge branch-a
```

* Delete a branch called _my-branch_: `git branch -d my-branch`

Upon using `git push` all existing branches will get pushed to GitHub.s

---

## 3. Sharing but with no branching (not ideal)

This is not considered a best practice because if branches are not used, you can not write and debug your section of the project independently from the main version. However, from the point of view of learning to use Git and GitHub, it is an intermediate step between working alone and "proper" collaborative practices.

See the NSF's [National Ecological Observatory Network](https://www.neonscience.org/git-setup-remote), which is part 7 of a succinct 7-part beginner's Git tutorial.

---

## 4. Fork & Pull Workflow

Collaboration using a Fork from someone else's repository, develop in a branch, maintain synchronicity with the originator's master, and request addition of your work using pull request.

1. Fork to your own repository
2. Clone to your local
   1. In your local folder under which the new repo should reside: `Git clone …URL…`
   2. Track the original upstream version: `Git remote add upstream`
   3. (Verify the new remote with `git remote -v` .)
3. At start of each editing session:
   1. Bring upstream's branches (with edits) into the local repo.: `git fetch upstream`
   2. (View all branches, including those from upstream with `git branch -va` .)
   3. Checkout your master branch and merge with upstream's master:

      ```bash
      git checkout master
      git merge upstream/master
      ```

   4. If there were any new commits on upstream's master, rebase your work branch:

      ```bash
      git checkout newfeature
      git rebase master
      ```

      This means "rebase the _newfeature_ branch onto the _master_ branch."
      * **Golden rule of git rebase**: never use it on public branches. For example never, never do `git checkout master` then `git rebase newfeature`. From [this reference](https://www.atlassian.com/git/tutorials/merging-vs-rebasing#the-golden-rule-of-rebasing).

   5. OR, IF desired, at the same time as rebasing, clear up by squashing (some) smaller commits down into larger commits using interactive rebase:

      ```bash
      git checkout newfeature
      git rebase -i master
      ```

4. Do all editing on a branch, not `master`. Either `git checkout newfeature` or create a new branch by first checking out the master branch (the new branch should come from master) then create a new branch; `git checkout master` then `git branch newfeature`.

5. When ready, push to your GitHub repo and ask to merge with original
   1. Send to your repo: `git push`
   2. Ask to contribute your work to owner of upstream.
       * _NOTE: At your GitHub repo be sure to select your development branch (eg. `newbranch`)!_
       * Click **pull request**.

   (NOTE: Subsequent changes to that branch will be tracked until pull request is accepted or rejected.)
