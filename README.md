# algoccountabilibuddies

```
             ,----------------,              ,---------,
        ,-----------------------,          ,"        ,"|
      ,"                      ,"|        ,"        ,"  |
     +-----------------------+  |      ,"        ,"    |
     |  .-----------------.  |  |     +---------+      |
     |  |                 |  |  |     | -==----'|      |
     |  |  we do algos    |  |  |     |         |      |
     |  |  real big son   |  |  |/----|`---=    |      |
     |  |  ೕ(•̀ㅂ•́ )        |  |  |   ,/|==== ooo |      ;
     |  |                 |  |  |  // |(((( [33]|    ,"
     |  `-----------------'  |," .;'| |((((     |  ,"
     +-----------------------+  ;;  | |         |,"
        /_)______________(_/  //'   | +---------+
   ___________________________/___  `,
  /  oooooooooooooooo  .o.  oooo /,   \,"-----------
 / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
/_==__==========__==_ooo__ooo=_/'   /___________,"
`-----------------------------'
```

## File Structure

Each folder is named after the month and year, and contains markdown files named after the date (in YYYYMMDD format) and daily problem (all lower case, snake case), which contain the problem statement, like such:

```
month-year
  | day-problem_title
```

e.g.

```
december-2016
  | 20161221-first_unique_character_in_string.md
  | 20161222-does_this_linked_list_have_a_cycle.md
  ...
january-2017
  | 20170101-invert_binary_tree.md
  ...
```

## Repo Usage

This is assuming that you have already cloned and downloaded the repo for regular use.

* Checkout to master
* Run `git pull origin master` to get the latest challenge
* Checkout new branch for new problem (*this means unique new branch daily*)
* Find markdown file containing new problem in appropriate monthly folder
* Complete problem in same folder in separate file
  * Name the file after the markdown
    * e.g. for `20161221-first_unique_character_in_string.md`, 
      my file is `20161221-first_unique_character_in_string.js`
  * Copy and paste the problem statement
  * Include pseudocode (optional)
  * Include driver code (optional)
  * Include big O time and space analysis
* Create pull request following instructions below:

## Pull Request Protocol

Make the title of your pull request as such:

> Name / Date / Problem Title

e.g.

> sally / 20161221 / first unique character in a string

You are encouraged to make comments in your PR about
  * how the challenge went for you (difficult? efficiency of your solution?)
  * feedback about the problem selection
  * tag others for feedback about your solution

See [this PR](https://github.com/parkyngj/algoccountabilibuddies/pull/1) for sample.

*Note: Even if you don't have a solution, just including some thoughts or pseudocode in your file is highly recommended.*
 
## Problem Addition Protocol

* In [this repo](https://github.com/parkyngj/algoccountabilibuddies), go to appropriate monthly folder
* Click **Create new file** to make markdown file with problem inside
* Name file in this format: `YYYYMMDD-problem_title.md`
* First, include the source of the problem
* Then, include problem statement
* Commit challenge to the master at bottom by clicking **Commit new file**.

See [this file](https://github.com/parkyngj/algoccountabilibuddies/blob/master/december-2016/20161221-first_unique_character_in_a_string.md) for sample.

## Problem Selection Rotation

Defunct and dormant. Feel free to let the team know if you'd like to take up the mantle in picking daily problems!

## Tips

* To view only your own code, go to the top of this repo to the search bar and type `is:pr author:GITHUBUSERNAME`
  * e.g. `is:pr author:parkyngj`

## List of Members (added as collaborators)

* Alex Carroll ([@lexac1](https://github.com/lexac1))
* Alex Min ([@mintheredonethat](https://github.com/mintheredonethat))
* Ali Baker ([@thealicat13](https://github.com/thealicat13))
* Chris Chan ([@christopherchan35](https://github.com/christopherchan35))
* Jeff Lee ([@jlee22](https://github.com/jlee22))
* Jonathan Lok ([@lokpio](https://github.com/lokpio))
* Nestor Alvarez ([@xdkernelx](https://github.com/xdkernelx))
* Paula Lee ([@pdlee877](https://github.com/pdlee877))
* Sally Park ([@sally](https://github.com/sally))
