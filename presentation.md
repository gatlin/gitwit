# Don't be a gitwit

---

# Why git?

*Wasn't this problem already solved?*

## The literal answer

Linus Torvalds needed something to manage the Linux kernel. The kernel is a
massive project with thousands of contributors trying millions of experiments
with a shifting hierarchy and a codebase so massive they couldn't keep it all
managed on one central repository if they tried.

![Everything is terrible](./img/terrible.gif)

---

# A better answer

We're not as huge as the Linux foundation, so again: *why git?*

1. Reality is an illusion

  Git operates on the assumption that you have multiple people working on
  overlapping subsets of the same codebase and that, at any given moment,
  no two people have compatible code.

  Hence, git is a *distributed version control system.* You have your own
  repository and unless you say otherwise there is no such thing as the
  "canonical" repository.

2. Branching should be easy.

  Want to try something new? Just branch. If it works - **great!** Merge it
  back into the parent. If it sucks - delete the branch and forget the whole
  embarrassing affair.

3. You should be able to create the workflow you need.

  Git is really 152 (or so) separate commands under one convenient wrapper.
  You can compose them any way you want to. It's the Unix Philosophy for
  version control.

---

# How does git work?

Magic.

Just kidding. Inside your git repository you'll find a hidden directory named
`.git`. It contains a configuration file (remote repository locations, etc) and
a bunch of diffs.

*That's it.* However, some commands don't make sense without a 

## Staging

Unlike most version control systems, git has a *staging* area. You stage a
change when you `git add` it.

*Protip: You can even stage portions of a file rather than the whole thing!*

## Committing

When you actually *commit* changes, you are really taking a diff **from** your
current version of the file **to** the old version of the file. If you ever
have to rollback history, git will just apply the diffs until you arrive.

---

# Down to business

---

# Common commands

- `clone`
- `add`
- `commit
- `checkout`
- `branch`
- `fetch`
- `merge`
- `push`
- `pull`
- `log`
- `status`
- `rebase`

---

# clone

As discussed, git is very anarchist. So if you want to grab someone's code out
of a git repository, you're not "checking it out" or being granted access:
you're cloning their entire history. Then you can start adding your own
history in your own little parallel universe.

Usage:

    git clone https://somedomain/path/to/repo.git

    git clone git://somedomain/path/to/repo.git

    git clone git@somedomain:/path/to/repo.git

---

# add

This stages a change to be committed. Anything you want to commit, `add`.
Otherwise, don't.

Usage:

    git add somefile

    git add ./*

---

# commit

This actually commits the changes in your staging area to your local
repository. In git, everything in a branch is just a collection of diffs; if
you apply them in the correct order, you go back through time.

## Message

You have to include a commit message. You can do so with the `-m` switch.

    git commit -m "Some commit message"

If you don't, git will hassle you by running your default editor and make you
type something and save it.

## add and commit at once!

If git is already tracking some files, then you can add and commit all changes
with the `-a` flag:

    git commit -a -m "my commit message"

---

# Backdiff to the future!

![Back to the Future](./img/bttf.jpg)

---

# checkout

In SVN, `checkout` means "checkout what's at the server and put it here in
front of me."

In git, it really means "switch to a different branch." The naming is perhaps
unfortunate, but it does make sense: I want to check out this branch to see
what is in it and make changes.

You can checkout local and remote branches.

Local:

    git checkout somelocalbranch

Remote:

    git fetch remotename
    git checkout remotename/somebranch

*We'll get to `fetch` in a moment.* The "Remote" commands essentially brings
down server branches without modifying any of your local branches.

---

# You know, I always see "checkout" ...

... but never a **checkin** command. What's up with that, amirite?

![What's the deal?](./img/seinfeld.jpg)

*I almost went with a Hotel California joke; regrets.*

---

# branch

The branch command can do several things:

- List branches: `git branch`
- Create a new branch: `git branch branchname`
