# grunt-dploy

> [DPLOY](https://github.com/LeanMeanFightingMachine/dploy) is an FTP/SFTP deployment tool built in node.js

*Issues with DPLOY should be reported on the [DPLOY repo](https://github.com/LeanMeanFightingMachine/dploy).*

## Getting Started

If you haven't used [grunt][] before, be sure to check out the [Getting Started][] guide, as it explains how to create a [gruntfile][Getting Started] as well as install and use grunt plugins. Once you're familiar with that process, install this plugin with this command:

```sh
npm install --save-dev grunt-dploy
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-dploy');
```


[grunt]: http://gruntjs.com
[Getting Started]: http://gruntjs.com/getting-started


### Example

```js
grunt.initConfig({
    dploy: {                                    // Task
        stage: {                                // Target
            host: "ftp.myserver.com"            // Your FTP host
            user: "user"                        // Your FTP user
            pass: "secret-password"             // Your FTP secret-password
            path: {
                local: "deploy/",               // The local folder that you want to upload
                remote: "public_html/"          // Where the files from the local file will be uploaded at in your remote server
            }
        }
    }
});

grunt.loadNpmTasks('grunt-dploy');
grunt.registerTask('default', ['dploy']);
```

For more examples and the full documentation, visit the [DPLOY](https://github.com/LeanMeanFightingMachine/dploy) repository.


## License

The MIT License

Copyright (c) 2013 Lean Mean Fighting Machine, Inc. http://lmfm.co.uk

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.