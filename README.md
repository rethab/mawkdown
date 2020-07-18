# Welcome to Mawkdown
Mawkdown is a toy markdown parser written in AWK
It requires GAWK, because it uses the `match` function.

## It supports all of these things

Now look at this fine `rust` code:

```
let x = 5;
printf!("{} + {} = {}", x, x, x + x);
```

here's a link to my other project called [digester](https://digester.app?ref=mawkdown).

> and here's some quoted text
> which can span multiple lines

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
