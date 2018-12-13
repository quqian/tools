del U8_App_With_Bib.bin									//删除原来的目标文件
fsutil file createnew U8_App_With_Bib.bin 8192			//创建一个大小为8192字节的空白文件U8_App_With_Bib.bin，该值的大小由偏移地址0x2000决定
cat U8_Sub_app.bin >>U8_App_With_Bib.bin				//将U8_Sub_app.bin追加到空白文件dest.bin之后
hbin Boot_U8_Sub_20181212.bin U8_App_With_Bib.bin		//将Boot_U8_Sub_20181212.bin放到U8_App_With_Bib.bin的头上，填充U8_App_With_Bib.bin头上8KB的空白
