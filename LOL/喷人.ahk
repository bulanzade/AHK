
array := ["你爸和你妈打电话，你猜谁先挂。", "以后打电话记得让别人先挂 不然你就挂了。", "你刚才是不是丢东西了， 你脑子不见了。", "如果让人犯恶心是刑事犯罪，你得死刑立即执行。", "宁说的这些爷都懂，但宁就不能给爷磕个头吗？", "做一棵小草也没什么不好，今天你踩在我头上，明天我长在你坟上。", "这么喜欢装逼 下辈子当条内裤好了。", "天下之大，大不过你缺的那块心眼。", "看着你那可悲可笑的滑稽样。我心底产生了一种悲痛感。", "你脑袋上长个头不是拿来拍皮球的。", "这是第一次当你的老爸，我们的心情都有点复杂。", "有些人的脸，丑得像一桩冤案。——木心"]
Index := 1
$^z::
    Send {Enter}
    Sleep 300
    ;Random, Index, 1, array.Length()
    Word := Array[Index]
    Send %Word%
    Sleep 300
    Send {Enter}
    Index := Index + 1
    If (Index > array.Length())
    {
        Index := 1
    }
    Return

$^x::
    Send +{Enter}
    Sleep 300
    Word := Array[Index]
    Send %Word%
    Sleep 300
    Send {Enter}
    Index := Index + 1
    If (Index > array.Length())
    {
        Index := 1
    }
    Return