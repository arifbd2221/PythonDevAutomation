import sys
import os
from github import Github

# provide your workspace directory
path = "E:\Python/Projects/MyProjects/"

username = "Github Username"
password = "Github Password"

def create():
    folderName= str(sys.argv[1])
    user = Github(username,password).get_user()
    repo = user.create_repo(folderName) 
    print(f"Successfully created repository {folderName}")

if __name__ == "__main__":
    create()
