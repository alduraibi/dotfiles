# wvkbd
> On-screen keyboard for wlroots that sucks less.<sup>[1][desc]</sup>

**Links:** [Website][website] - [Source Code][code] - [Arch Wiki][archwiki] - [Documentation][docs]
 
## Open on-screen keyboard 
- Full English Keyboard:\
`wvkbd-mobintl --fn 'FiraGO 16' -l full,special`
- Simple English Keyboard:\
`wvkbd-mobintl --fn 'FiraGO 20' -l simple,special`
- Arabic Keyboard:\
`wvkbd-mobintl --fn 'FiraGO 16' -l arabic,special`
- Emoji Key<F10>board:\
`wvkbd-mobintl --fn 'FiraGO 20' -l emoji`
- Show/Hide Keyboard:\
`/bin/kill -SIGRTMIN+0 wvkbd-mobintl`
- Close Keyboard:\
`killall -e wvkbd-mobintl`


[website]: http://www.qtile.org/
[desc]: http://www.qtile.org/
[code]: https://github.com/qtile/qtile
[docs]: http://docs.qtile.org/en/stable/
[archwiki]: https://wiki.archlinux.org/title/Qtile
[wiki]: https://wiki.archlinux.org/title/Qtile
