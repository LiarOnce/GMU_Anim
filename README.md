GMU_Anim
=====
简介
-----
本插件用于简化实例变量缓动的过程，旨在使用一个函数，即可完成复杂的缓动过程。<br>
适用版本：Gamemaker Studio 2

## GMS1 版本

目前通过一部分修改保证了在 GameMaker: Studio 中无错误日志，但功能是否正常则是未知。

因为 GameMaker: Studio 已经过时，这个分支则进行了以下修改：

1. 由于 GameMaker: Studio 不支持在代码内使用 `#macro` 初始化常量，所以这里将 `GMU_Anim_Init` 脚本删除，改用 GameMaker: Studio 内置的 Macros 代替。需将 `constants.txt` 文件导入至项目的 `Macros --> Default` 中
2. 由于 GameMaker: Studio 并不支持三目运算符，所以 tween效果 `GMU_ANIM_EXPO` 将不支持 `GMU_ANIM_IN` 和 `GMU_ANIM_OUT`，仅 `GMU_ANIM_IN_OUT` 可用。
3. 由于 GameMaker: Studio 中仅 `instance_create` 函数可用，所以使用 `instance_create` 代替 `instance_create_depth` 函数。