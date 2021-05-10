# Some challenges

This is not meant to be an exhaustive troubleshooting guide. The advise is simply based on difficulties we have encountered, or challenges that are common or expected to be common.

Currently the items are in random order - we might gather them into sections later.

1. Here is the main **[git reference](https://git-scm.com/docs)**. They also have a succinct git cheat sheet in [online](https://training.github.com/downloads/github-git-cheat-sheet/) and [PDF](https://training.github.com/downloads/github-git-cheat-sheet.pdf) formats.

2. **The `.gitignore` file not working:** The ability of Git to ignore (when committing) files specified in the `.gitignore` file does not work on files that were already part of the repository when the .gitignore file was created, or the repo was cloned. If some files that should be ignored somehow get into the repo. you can untrack them using the short instructions here: [Untrack-files-already-added-to-git-repository-based-on-gitignore](http://www.codeblocq.com/2016/01/Untrack-files-already-added-to-git-repository-based-on-gitignore/).

3. I'm unclear about how to set up a shell to recognize the environment needed to run Conda, Git, Python etc. The shell established by miniconda install (called Anaconda Powershell Prompt (miniconda3)) is fine, but what needs to be done if you change to a different shell? **ANSWER**: not resolved yet.

4. Making Powershell CML prompt more informative while using git: a suggestion in a [blog](https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx) and [video](https://www.youtube.com/watch?v=lu__oGZVT98) (video refers to blog). To back out of these changes simply removing the `posh-git` lines from $profile and (optionally) reset prompt fonts in shell settings ("settings" from dropdown menu in Windows terminal, or via "fonts" in "Properties" using right click on the Shell title bar).
