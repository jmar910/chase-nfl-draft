# Chase NFL Draft

## Setup
- Clone the repo

Then:
```
bundle install
```

Setup DB:
```
rake db:setup
```

You can now run the rails server by running:
```
rails s
```

NOTE: The app will run but not have any data. Please see following section to load data.

## Load data
You can load all the test data by running
```
rake import:all
```
(The CSV files being loaded are in the root directory)

## Simulate draft
You can simulate a draft by running
```
rake simulate_draft
```

NOTE: If you run the simulate_draft task, you will not be able to pick any players since they will have been picked already. You can test picking/acquiring players before you run the simulate_draft task. 

## Testing
Rspec for testing. You can run the test suite by running
```
rspec spec
```

