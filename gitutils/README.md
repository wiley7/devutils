## changelog.sh

auto generate changelog during tag2tag from git-commit-message

usage:
```bash
sh changelog.sh ${filter} ${count}
```

display:
```bash
sh changelog.sh

*master.160722.02*
---
- 2016-07-22 (john) add feature account login
- 2016-07-22 (tom) fix account register bug
- 2016-07-22 (john) remove account system
```


## php_modify_check.sh

auto check syntax of changed php files in git repo
usage:
```bash
sh php_modify_check.sh
```

display:
```bash
 No syntax errors detected in foo.php
 No syntax errors detected in bar.php
 No syntax errors detected in dir/foo.php
 ```

