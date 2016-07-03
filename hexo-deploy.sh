cd ~/桌面/poetries.github.io/

git config --global user.name "poetries"
git config --global user.email "jingguanliuye@gmail.com"
git  add .
git  commit -m  "update docs"
git  remote rm origin
git remote add origin  git@github.com:poetries/poetries.github.io.git
git push origin dev:dev



rm -rf    ~/桌面/poetries.github.io/


