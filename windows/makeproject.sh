#makeproject.sh
echo "starting";

python create.py $1
cd E:\Python/Projects/MyProjects
django-admin startproject $1
cd E:\Python/Projects/MyProjects/$1
git init
git remote add origin https://github.com/arifbd2221/$1.git
touch README.md
git add .
git commit -m "Initial commit"
git push -u origin master

echo "ending";
