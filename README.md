## testrails API gem
This gem will assist you in interfacing with testrails's api

Currently only supports a couple of GET features

PRs are welcome


## Installation
Add the following to your Gemfile

upstream:
```bash
source "https://rubygems.org"
gem "testrails"
```

git:
```bash
source 'https://rubygems.org'
gem 'testrails', :git => 'https://github.com/arwineap/testrails'
```


## Examples
```ruby
require 'testrails'
tr = Testrails.new('https://company.testrail.net', '4', 'username@domain.com', 'hunter123')
tr.get_run('960')
```
