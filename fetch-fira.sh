mkdir -p /usr/share/fonts/truetype/FiraSans
mkdir -p /usr/share/fonts/opentype/FiraSans
cd ~
wget https://github.com/mozilla/Fira/archive/4.202.zip -O FiraSans.zip
unzip FiraSans.zip
cp ~/Fira*/**/*.ttf /usr/share/fonts/truetype/FiraSans/
cp ~/Fira*/**/*.otf /usr/share/fonts/opentype/FiraSans/
fc-cache -f -v