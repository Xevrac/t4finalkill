# t4finalkill
Final Kill Cam mod for Plutonium T4 (MP).

Derived from CoD4 version, credits to original author for [base](https://www.moddb.com/mods/final-killcam/downloads/final-killcam-24). (FzBr.d4rk)

Credits to Xevrac and Horizonz for porting and implementing missing functions, features, testing etc.

Ported by [Xevnet](https://xevnet.au).

# Screenshots 

![image](https://github.com/Xevrac/t4finalkill/assets/19704346/f6fe31ed-66d2-4fab-bd66-c73f9f302118)

![image](https://github.com/Xevrac/t4finalkill/assets/19704346/15e2c0b3-6f33-44d2-9c36-a1b2abe49ce6)

![image](https://github.com/Xevrac/t4finalkill/assets/19704346/05e2932c-2ae8-4c04-925a-d3580d03a985)

# Features

* Working slow motion
* Responsive to gamemode roundEnd() types
* Supports DM, TDM, DOM, SAB, SD, TWAR
* Unsupported KOTH // Experimental
* Disables enemy pips on HUD radar when overtime in SAB

# Notes

* Final Kill camera does not follow special kills only the enemies 1st or 3rd person camera:
  * When a player is killed by an attack dog
  * When a player is killed by a throwable weapon
  * When a player is killed by artillery
* _finalkillcam.gsc only supports **absolute** victories and losses
  * I.e. you cannot display finalkillcam on tie, draw, intermission, end of regulation etc.
  * We may implement this at a later time - Feel free to fork and implement yourself if wanted
* You can press `F3` to change from 3rd Person and 1st Person during the final kill

# Installation

i) Download the release

ii) Copy all files from `gsc` to `.\t4\main_shared\maps\mp\gametypes\`
> ℹ️ Your root server folder is represented by `.\t4\`

> If `main_shared` does not exist, create it.

iii) Launch your server and enjoy this release!
