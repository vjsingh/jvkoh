module.exports =
  mongodb:
    development:
      name: "jvkoh-development"
      port: 27017
      host: "127.0.0.1"
    test:
      name: "jvkoh-test"
      port: 27017
      host: "127.0.0.1"
    staging:
      name: "jvkoh-staging"
      port: 27017
      host: "127.0.0.1"
    production:
      name: "jvkoh-production"
      port: 27017
      host: "127.0.0.1"
    
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
