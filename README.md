# A compound 6x09 MultiComputer

A project to build a system that uses my concept of _novel metal_ to architect _a new kind_ of computer system. This repo serves as a single point-of-reference containing hardware (in PCB form) and software. Multiplicity is the theme.

### A bit of history

![TRS-80-Color](/images/trs-80-color.jpg)

I adored my 6809 machine - A Tandy Color Computer [CoCo](https://www.cocopedia.com/wiki/index.php/Main_Page) 2 - it took a significant amount of effort to obtain one. I had asked my parents one Christmas in 1981 but the $399 price tag was too much - considering I had just asked them a few months prior to help me purchase a used Hewlett-Packard 5036A Microprocessor Training Kit where I could learn the ins-and-outs of an Intel 8085. I remember my father lamenting: Could I focus my attention on _at least one processor_ before moving-on to the Motorola 6809? During this time, I had a paper route and was setting-aside $50 per month and by the time 1983, I had a decent amount of savings in the bank earning 5%. Strolling into the local store in the latter part of September, I saw the advertised price in the latest Radio Shack catalog was lower than the CoCo 1! The great news was there were savings to upgrades of 64k, plus some extra ROMs and a game pack - Model 26-3003 Extended Color Basic (ECB). Complaining my slight monetary shortcoming, I was offered a more "economic" alternative where I could assemble the computer myself.

Thinking quite hard on this idea - I had done soldering in the past years making a ruby-crystal laser and a metal detector in the basement over one or two summers - but had stopped the practice because of the rather large (and unwieldy) Weller soldering iron my father had in his toolbox. At the time I did not happen upon the newer pencil-size irons that were out. After pacing around the store thinking intently, I placed a tentative order for the assembled model that I would come back the next day after asking my father that evening if he could help me assemble the 26-3126 (64K, ECB) CoCo 2 kit. As he said he didn't have the time at the moment and I did not want to wait, I schemed the missing funds as I had the monthly collection impending on the route and would have a temporary clutch of extra cash. I was able to leverage the difference and pay back the newspaper after a fifteen-minute telephone call to my "route coordinator" justifying why and when I could make up the difference. Such an experience I remember to this day and it still drives me to insist that one can find ways to learn new things simply by being at the right place and time with a generous amount of coincidental luck. And that this weird and subtle idea of _novel metal_ lies not just in mythology but embodied in hardware that has the highest probability of revealing a _real-time_ AI.

Years later when I started University, I had this CPU in-mind when I sketched-out design ideas into a notebook for what formally began my idea of _novel metal_. I had been reading about the early years of Cybernetics and the idea of a homeostatic machine - the basic equivalent to what (synthetic) life would be equated to in hardware. Around 2006, I discovered Camelforth latently on the Internet and found some sources to port an [exec09 emulator](https://github.com/cartheur/M6809-exec). Camelforth seemed interesting as I could construct a kernel around a conjoined 8-bit foundation with various novel ways of establishing an OS.

### What is the Forth language?

Read about it [here](/forth-tutorials/ReadMe.md).

### Forth to Camelforth

I learned about the Forth langauge in an early undergraduate class where the argument was of its powerful nature by focusing on the concept of the _word_ in computing as a basic unit of computational syntax. So, in essence, a complex functional system could be represented as a heirarchy of words, as distinct modules communicating implicitly via a stack mechanism. The most profound take-away, as noted on the Wikipedia page is: Forth has been called a meta-application language: a language that can be used to create [problem-oriented](https://en.wikipedia.org/wiki/Domain-specific_language) languages. This is how I envision a contigous syntactical novel metal system that has an internal computational monologue with constructs not unlike an English language.

Camelforth runs on real hardware using a hardware bank-switching unit on a Multicomputer, via the way the kernel is built. Other works mentioned that Camelforth can also act as boot loader for Grant's port of Microsoft ROM BASIC (hurrah microsoft) and for the N8VEM port of Dave Dunfield's CUBIX and for ports of FLEX, BUGGY, and FUZIX. I have been most interested in leveraging [OS-9](https://en.wikipedia.org/wiki/OS-9) via `exec09`. I am reading into the current status and archives of the operating system via [Microware](https://www.microware.com/index.php/os-9-archive-new/category/3-os9)'s resources. Here one can find about the [architecture](https://www.microware.com/index.php/architecture).

### CamelForth Links

* [Camelforth](https://launchpad.net/camelforth)
* [Camelforth website](http://www.camelforth.com/)
* [Papers on this subject](http://www.bradrodriguez.com/papers/index.html)

### What is a stack machine?

Rather than a length explanation, check [here](https://en.wikipedia.org/wiki/Stack_machine).
