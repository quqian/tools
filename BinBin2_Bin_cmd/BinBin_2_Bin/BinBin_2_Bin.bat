del U8_App_With_Bib.bin
fsutil file createnew U8_App_With_Bib.bin 8192
cat U8_Sub_app.bin >>U8_App_With_Bib.bin
hbin Boot_U8_Sub_20181212.bin U8_App_With_Bib.bin
