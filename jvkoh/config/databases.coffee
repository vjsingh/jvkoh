module.exports =
  mongodb:
    development:
      #name: "jvkoh-development"
      #port: 27017
      #host: "127.0.0.1"
      name: "nodejitsudb254655919034"
      port: 10076
      host: "staff.mongohq.com"
      username: 'nodejitsu'
      password: '5e445078e063c9e14b2b1c8efacdac33'
    test:
      name: "nodejitsudb254655919034"
      port: 10076
      host: "staff.mongohq.com"
      username: 'nodejitsu'
      password: '5e445078e063c9e14b2b1c8efacdac33'
    staging:
      name: "nodejitsudb254655919034"
      port: 10076
      host: "staff.mongohq.com"
      username: 'nodejitsu'
      password: '5e445078e063c9e14b2b1c8efacdac33'
    #mongodb://nodejitsu:5e445078e063c9e14b2b1c8efacdac33@staff.mongohq.com:10076/nodejitsudb254655919034
    production:
      name: "nodejitsudb254655919034"
      port: 10076
      host: "staff.mongohq.com"
      username: 'nodejitsu'
      password: '5e445078e063c9e14b2b1c8efacdac33'

  redis:
    development:
      name: "jvkoh-development"
      port: 6397
      host: "127.0.0.1"
    test:
      name: "jvkoh-test"
      port: 6397
      host: "127.0.0.1"
    staging:
      name: "jvkoh-staging"
      port: 6397
      host: "127.0.0.1"
    production:
      name: "jvkoh-production"
      port: 6397
      host: "127.0.0.1"
