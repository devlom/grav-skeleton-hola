git clone https://github.com/getgrav/grav.git hola-skeleton
cd hola-skeleton
rm -rf user
git clone https://github.com/devlom/grav-skeleton-hola.git user
cd user/themes/
git clone https://github.com/devlom/grav-theme-hola.git hola
cd ..
cd ..
bin/grav install
bin/gpm update --all-yes
find . | grep .git | xargs rm -rf