# Automation API and Web UI 

this automation created with Ruby, Selenium, Rest-Client, Cucumber

## Installation

Before Running this automation you should Download and Install [Ruby](https://rubyinstaller.org/downloads/) and [ChromeDriver](https://chromedriver.chromium.org/downloads)
Copy ChromeDriver to your ruby bin folder example : C:\Ruby27-x64\bin

After Download, Copy And Install, Open CMD/Terminal/etc
and follow this command 

```bash
gem install selenium-webdriver
gem install cucumber
gem install bundler
gem install rspec
gem install faker
```

After that Clone this Repo

```bash
git clone https://richiramadhan@bitbucket.org/richiramadhan/technical-mekari-sdet-test.git
```

Open Directory Folder with CMD/Terminal/etc
and follow this command
```bash
bundle install

```

## Running Automation

Go to directory Automation with CMD/Terminal/etc

Running All Test Cases without create report
```bash
cucumber --guess
```

Running Specific Test Cases with Tag
```bash
cucumber --guess --tags=@tagname
```

Running All Test Cases + create report
```
cucumber --guess -f pretty -f html -o report.html
```

