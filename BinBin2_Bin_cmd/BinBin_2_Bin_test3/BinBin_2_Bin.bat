echo off

del U8_App_With_Bin.bin

fsutil file createnew U8_App_With_Bin.bin 8192

hbin Boot_U8_Sub_20181212.bin U8_App_With_Bin.bin
cat U8_Sub_app.bin >>U8_App_With_Bin.bin



del dest.bin
fsutil file createnew dest.bin 40960
hbin U8_App_With_Bin.bin dest.bin
cat U8_App_With_Bin.bin >>dest.bin

echo on