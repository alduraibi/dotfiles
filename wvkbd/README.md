# wvkbd

> On-screen keyboard for wlroots that sucks less.<sup>[1][desc]</sup>

**Links:** [Source Code][code]

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

[desc]: https://git.sr.ht/~proycon/wvkbd
[code]: https://git.sr.ht/~proycon/wvkbd
