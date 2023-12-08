# A Motorola 6809 Multi-Computer

A project to build a system that uses my concept of _novel metal_ to architect a new kind of computer system. This repo serves as a single point-of-reference containing hardware (in PCB form) and software.

### A bit of history

![TRS-80-Color](/images/trs-80-color.jpg)

I adored my 6809 machine - A Tandy Color Computer (CoCo) 2 - it took a significant amount of effort to obtain one. I had asked my parents one Christmas in 1981 but the $399 price tag was too much - considering I had just asked them a few months prior to help me purchase a used Hewlett-Packard 5036A Microprocessor Training Kit where I could learn the ins-and-outs of an Intel 8085. During this time, I had a paper route and was saving about $50 per month and by the time 1983, I had a pretty good amount of money. Strolling into the local store in the latter part of September, I saw the advertised price in the latest Radio Shack catalog was lower than the CoCo 1! The great news was there were savings to upgrades of 64k, plus some extra ROMs and a game pack - Model 26-3003 Extended Color Basic (ECB). Lamenting my slight shortcoming, I remember at the time being offered a cheaper alternative where I could assemble the computer myself. I placed a tentative order for the assembled model but waited the evening to ask my father if he could help me assemble the 26-3126 (64K, ECB) CoCo 2 kit. I had a collection on the route and had a clutch of extra cash I was able to leverage the difference and pay back the newspaper. It was an experience I remember to this day and drives me to note how one can find ways to learn new things simply by being at the right place and time with a generous amount of coincidental luck.

 Years later, when I started University, I had the CPU in mind when I sketched-out design ideas into a notebook for what began as my idea of _novel metal_. I had been reading about the early years of Cybernetics and the idea of a homeostatic machine - the basic equivalent to what (synthetic) life would be equated to in hardware. Around 2006, I discovered Camelforth latently on the Internet and found some sources to port an [exec09 emulator](https://github.com/cartheur/M6809-exec). Camelforth seemed interesting as I could construct a kernel around a conjoined 8-bit foundation with various novel ways of establishing an OS.

 ### Why Camelforth

 I knew about the [Forth](https://en.wikipedia.org/wiki/Forth_(programming_language)) langauge from a class where the instructor noted the power of focusing on the concept of the _word_ in computing as a basic unit of computational syntax. So, in essence, a complex functional system could be represented as a heirarchy of words, as distinct modules communicating implicitly via a stack mechanism. The most profound take-away, as noted on the Wikipedia page is: Forth has been called a meta-application language: a language that can be used to create [problem-oriented](https://en.wikipedia.org/wiki/Domain-specific_language) languages. This is how I envision a contigous syntactical novel metal system that has an internal computational monologue with constructs not unlike an English language.

The sales states that Camelforth runs on real hardware using a hardware bank-switching unit on a Multi-Computer, via the way the kernel is built. Other works mentioned that Camelforth can also act as boot loader for Grant's port of Microsoft ROM BASIC (hurrah microsoft) and for the N8VEM port of Dave Dunfield's CUBIX and for ports of FLEX, BUGGY, and FUZIX. I have been most interested in leveraging [OS-9](https://en.wikipedia.org/wiki/OS-9) via `exec09`.

### More on CamelForth

* [Camelforth](https://launchpad.net/camelforth)
* [Casmelforth website](http://www.camelforth.com/)
* [Papers on this subject](http://www.bradrodriguez.com/papers/index.html)
