git add .
git commit -m "$(date) commit"

git remote set-url origin https://boushphong:$GITHUB_TOKEN@github.com/boushphong/elt_pipeline.git

git push origin master
