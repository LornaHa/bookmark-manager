# Bookmark Manager

### User Stories:
```
As a Person,
So that I can choose which website to visit,
I'd like to see a list of all my bookmarks.
```
![domain-model-bookmarks](https://github.com/LornaHa/bookmark-manager/blob/master/domain-model-bookmarks.jpg)

```
As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

### Database Set up


Install PostgreSQL - ``` brew install postgresql```

Allow Homebrew to start and stop the Postgres service

``` 
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
```
To run PostgreSQL
```
psql <database name>;
```

To get access to the first database
``` 
$> psql postgres
postgres=# 
```

Here we can create new databases
```
postgres=# CREATE DATABASE bookmark_manager;
```

Connect to this database 
```
\c bookmark_manager;
```

Quitting anytime
```
\q
```

Whilst in the bookmark_manager database, create a new table within this database
```
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```

To inspect the table
```
\dt
```

### To run the Bookmark Manager app

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`.
