#Achtung, das SAS generieren und einsetzen
$httpSASLink =  "https://blob1of1vhd1images.blob.core.windows.net/testcontainerc/disk0.vhdx?sp=r&st=2020-02-26T13:14:22Z&se=2020-02-26T21:14:22Z&spr=https&sv=2019-02-02&sr=b&sig=sqAasOLvvULFDKOh%2FPwFHVGV28EysiR1QUJV9KXZ5NM%3D"
$LocalVHD = ".\vhddisk01.vhd"
.\azcopy.exe cp $httpSASLink $LocalVHD