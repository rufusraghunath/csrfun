# CSRFun

### A super simple pentesting tool for Cross-Site Request Forgery

This is a lightweight app that allows you to mimic <a href="https://en.wikipedia.org/wiki/Cross-site_request_forgery">CSRF attacks</a> to check your own web applications for vulnerabilities. Simply set up your request configuration in a ```config.json``` file, and when you visit the app in your browser you can choose to execute those requests at will. The app runs on the default Sinatra port (4567).

<i><b>NOTE: </b>Obviously, this tool should only be used on applications you own or are explicitly allowed to test. Anything else would be illegal, and I accept absolutely no responsibility for your use of this application.</i>

##### Installation

If you don't have bundler, install with your favorite package manager, e.g.: ```brew install bundler```

Clone repo: ```git clone https://github.com/rufusraghunath/csrfun.git```

Inside repo: ```bundle install```

##### Setup

Change the ```config.json``` file to whatever you want. You can put as many URLs as you want, and register multiple HTTP/HTTPS requests per URL.

##### Running

From the repo root: ```ruby csrfun_app.rb```

In the browser, visit <a href="http://localhost:4567"><i>localhost:4567</i></a>.
