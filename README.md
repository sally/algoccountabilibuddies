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

First time usage:

* Clone repo
* Create branch with your name

Regular usage:

* Run `git pull` to get the latest challenge
* Find markdown file containing daily problem in appropriate monthly folder
* Complete problem in same folder in separate file
  * Name the file after the markdown
    * e.g. for `20161221-first_unique_character_in_string.md`, my file is `20161221-first_unique_character_in_string.rb`
  * At the top, copy and paste the problem statement
  * Include pseudocode (optional)
  * Include driver code (optional)
  * At the bottom, include big O time and space complexity analysis
* Create pull request following instructions below:

## Pull Request Protocol

Make the title of your pull request as such:

> Name / Date / Problem Title

e.g.

> sally / 20161221 / first unique character in a string

## Problem Addition Protocol

* In [this repo](https://github.com/parkyngj/algoccountabilibuddies), go to appropriate monthly folder
* Click **Create new file** to make markdown file with problem inside
* Name the file in this format: `YYYYMMDD-problem_title.md`
* At the top, include the source of the problem
* Include problem statement
* Commit challenge to the master branch at the bottom by clicking **Commit new file**.

See [this file](https://github.com/parkyngj/algoccountabilibuddies/blob/master/december-2016/20161221-first_unique_character_in_a_string.md) for sample.

## Problem Selection Rotation

* 20161221 - sally

rest TBD

## Tips

* To view only your own code, go to the top of this repo to the search bar and type `is:pr author:GITHUBUSERNAME`
  * e.g. `is:pr author:parkyngj`
