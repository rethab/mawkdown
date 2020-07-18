BEGIN                                    { print "<html><head><title>Mawkdown</title></head><body>" }
                                         { _=0 }
/^[^-]/ && inli                          { print "</ul>"; inli=0 }
/^[^>]/ && inq                           { print "</blockquote>"; inq=0 }
/^# /                                    { _=1; print "<h1>", substr($0, 2), "</h1>" }
/^## /                                   { _=1; print "<h2>", substr($0, 3), "</h2>" }
/^### /                                  { _=1; print "<h3>", substr($0, 4), "</h3>" }
/^#### /                                 { _=1; print "<h4>", substr($0, 5), "</h4>" }
/^```/                                   { _=1; if (!inpre) { print "<pre>"; inpre=1 } else { print "</pre>"; inpre=0 } }
/^\*\*.+\*\*/                            { _=1; print "<b>", substr($0, 3, length($0)-4), "</b>" }
/^\*.+\*/ && !_                          { _=1; print "<i>", substr($0, 2, length($0)-2), "</i>" }
/^__.+__/                                { _=1; print "<b>", substr($0, 3, length($0)-4), "</b>" }
/^_.+_/ && !_                            { _=1; print "<i>", substr($0, 2, length($0)-2), "</i>" }
/^- / && !_                              { _=1; if (!inli) { print "<ul>"; inli=1 }; print "<li>", substr($0, 2), "</li>" }
/^> / && !_                              { _=1; if (!inq) { print "<blockquote>"; inq=1 }; print substr($0, 2) }
/^---/                                   { _=1; print "<hr/>" }
match($0, /(.*)\[(.+)\]\((.+)\)(.*)/, u) { _=1; printf("%s<a href='%s'>%s</a>%s", u[1], u[3], u[2], u[4]) }
!_ && match($0, /(.*)`(.*)`(.*)/, u)     { _=1; printf("%s<code>%s</code>%s", u[1], u[2], u[3]) }
!_                                       { print $0 }
!inpre && !inli                          { print "<br/>" }
END                                      { print "</body></html>" }
