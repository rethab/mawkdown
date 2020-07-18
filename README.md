# Welcome to Mawkdown
Mawkdown is a toy markdown parser written in AWK

It requires GAWK, because it uses the `match` function.

## Try Mawkdown
Generate html:
```
awk -f mawkdown.awk README.md
```

Or directly open firefox:
```
awk -f mawkdown.awk README.md | ./pipefox.sh
```

## It supports all of these things
Now look at this fine `rust` code:

```
let x = 5;
printf!("{} + {} = {}", x, x, x + x);
```

here's a link to my other project called [digester](https://digester.app?ref=mawkdown).

this is not the first time I'm having fun with AWK: [awk-jvm](https://github.com/rethab/awk-jvm).

> and here's some quoted text

### Sample h3
*what does the above code do?*
- store the value 5 in the variable x
- call the printf macro

_italic with underscores_

**bold with asterisks**

__bold with underscores__

*italic with asterisks*

---

## Limitations
*basically any line can only contain one thing*

- formatting *within* a list does not work
