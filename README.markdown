A [giter8][g8] template for [Google App Engine][gae] [Unfiltered][unfiltered] applications.


## install

Build with [sbt][sbt]

    # download and copy google app engines sdk to /path/to/your/gae-home
    export APPENGINE_SDK_HOME=/path/to/your/gae-home
    g8 unfiltered/unfiltered-gae --name your-app
    cd your-app

To run through the appengine SDK

    sbt appengine-dev-server

Point your browser at http://localhost:8080/

## TODO

* yaml configs - http://code.google.com/appengine/docs/java/configyaml/appconfig_yaml.html

[sbt]: http://www.scala-sbt.org/
[gaesbt]: https://github.com/sbt/sbt-appengine
[g8]: http://github.com/foundweekends/giter8#readme
[unfiltered]: http://github.com/unfiltered/unfiltered#readme
[gae]: https://cloud.google.com/appengine/
