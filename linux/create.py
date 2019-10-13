#!/usr/bin/env python3

import sys
from github import Github

def create():
	folderName = str(sys.argv[1])
	user = Github('username', 'password/token').get_user()
	repo = user.create_repo(folderName)
	print('Successfully created repository ', folderName)

if __name__ == "__main__":
    create()
