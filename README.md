GMU_Anim
=====
简介
-----
本插件用于简化实例变量缓动的过程，旨在使用一个函数，即可完成复杂的缓动过程。<br>
适用版本：Gamemaker Studio 2

## GMS1 版本

目前通过一部分修改保证了在 GameMaker: Studio 中无错误日志，但功能是否正常则是未知。

2018-08-23更新：已将脚本更新到 2.0.0，移植后的影响已被降低

因为 GameMaker: Studio 已经过时，这个分支则进行了以下修改：

1. 由于 GameMaker: Studio 中仅 `instance_create` 函数可用，所以使用 `instance_create` 代替 `instance_create_depth` 函数。