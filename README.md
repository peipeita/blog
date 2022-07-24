# Pearsonal Dockerfile repository 
under dev.
## Clone repo.
```{shell}

git clone https://github.com/peipeita/container
cd container

git checkout -b feature/<TODO>
```
## If you modify
```{shell}
git add .
git commit -m "TODO"
git push origin HEAD

git checkout main
git merge feature/<TODO>
```

## When you docker build.
```{shell}
pwd
# Now you are in
# PATH-TO/container

# Example
docker build featurecounts -t featurecounts:latest
```