echo off

del U8_App_With_Bib.bin
fsutil file createnew U8_App_With_Bib.bin 8192
hbin Boot_U8_Sub_20181212.bin U8_App_With_Bib.bin
cat U8_Sub_app.bin >>U8_App_With_Bib.bin

fsutil file createnew dest.bin 40960
hbin U8_App_With_Bib.bin dest.bin
cat Boot_U8_Sub_20181212.bin >>dest.bin

echo on