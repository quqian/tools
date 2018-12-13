echo off

del U8_App_With_Bin.bin
fsutil file createnew U8_App_With_Bin.bin 8192
cat U8_Sub_app.bin >>U8_App_With_Bin.bin
hbin Boot_U8_Sub_20181212.bin U8_App_With_Bin.bin

echo on
