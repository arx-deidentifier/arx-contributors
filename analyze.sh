#!/bin/bash
git clone https://github.com/ejwa/gitinspector.git
git clone https://github.com/arx-deidentifier/arx.git
git clone https://github.com/f1yegor/git-fame-rb.git
cd git-fame-rb
gem build git_fame.gemspec
gem install --local git_fame-1.2.2.gem
cd ..

git config --global merge.renameLimit 999999
git config --global diff.renameLimit 999999

./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x example -x test -x gui -w arx/ > statistics-main.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x example -x test -x main -w arx/ > statistics-gui.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x main -x test -x gui -w arx/ > statistics-example.html
./gitinspector/gitinspector.py --format=html --since=2013-05-10 --file-types=java --hard -x example -x main -x gui -w arx/ > statistics-test.html

git fame --repository=arx --since=2013-05-10 --whitespace --exclude=logo,lib,doc,data,src/example,src/gui,src/test > statistics-main.csv
git fame --repository=arx --since=2013-05-10 --whitespace --exclude=logo,lib,doc,data,src/example,src/main,src/test > statistics-gui.csv
git fame --repository=arx --since=2013-05-10 --whitespace --exclude=logo,lib,doc,data,src/example,src/gui,src/main > statistics-test.csv
git fame --repository=arx --since=2013-05-10 --whitespace --exclude=logo,lib,doc,data,src/main,src/gui,src/test > statistics-example.csv

gem uninstall --all git_fame
rm -rf ./arx
rm -rf ./gitinspector

git add statistics-main.html
git add statistics-gui.html
git add statistics-example.html
git add statistics-test.html
git add statistics-main.csv
git add statistics-gui.csv
git add statistics-example.csv
git add statistics-test.csv
git commit -m "Update"
git push origin master