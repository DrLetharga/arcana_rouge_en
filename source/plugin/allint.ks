;hoge.ks

*all_erase


[iscript]
for (var i=0; i < kag.back.layers.count; i++)
	{
	kag.back.layers[i].freeImage();
	kag.fore.layers[i].freeImage();
	}
	//kag.back.base.freeImage();
[endscript]
[return]
