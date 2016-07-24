## changelog.sh

从git的commit message中，提取信息，生成从tag到tag之间的changelog

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

批量自动检查git仓库中修改过的php文件的语法

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

