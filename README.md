### Quick Start

Fork this repository to your github account and clone it to your machine. Then install the dependencies:
```bash
> git clone https://github.com/makersacademy/birthdays.git
> cd birthdays
> bundle
```

### Instructions

- Test-drive an implementation of the requirements
- Make sure your code is [linted](https://github.com/rubocop-hq/rubocop)
- [Open a PR](https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/about-pull-requests) when you've finished

### Requirements

I want a program that I can load in IRB that allows me to
- Store all of my friends’ birthdays so I can keep track of them
- See them all at once with their names and birthdays each on a line in a tidy format
- Check whose birthday it is today - the program can check through the birthdays I have stored and check each one to see if it’s someone’s birthday, and tells me something like "It's Mary Poppin's birthday today! They are 124 years old!" - otherwise it won't say anything.

More requirements:
- Test-drive extracting a birthday class
- Isolate your birthday list class using a mock for Birthday

### PLANNING

NOUNS
BirthdayList - owner
Birthday - owner
name - property of BirthdayList

ACTIONS
store - store someones birthday
see_all - lists all brithdays
age - works out persons age
see_today - lists todays birthdays and their age

BirthdayList
all - lists all birthdays in list
add - takes name and birthday and saves to list
today - lists birthdays today

Birthday
date - takes date
age - works out age from dob
