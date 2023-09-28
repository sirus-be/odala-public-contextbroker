# Components- Context Broker

## Deploy to Kubernetes
Kafka, zookeeper and Scorpio are deployable to Kubernetes Cluster with the Kubernetes manifests:
- resource-kafka.yaml
- resource-scorpio-aaio.yaml

Aside from these resources a Postgres server is needed.

[Script to create the Postgres database](Postgres/create_database.md)

### Manually
```kubectl apply -f resource-kafka.yaml --namespace scorpio```
```kubectl apply -f resource-scorpio-aaio.yaml --namespace scorpio```

### CICD (GitLab)
The release process is automated if you use the cicd pipepeline: .gitlab-ci.yml, the pipeline is triggered when changes are pushed to a branch with prefix odala-staging / odala-production

Secrects are set during deployment (GitLab cicd) and taken from GitLab group settings CICD variables.

### Source code
Full source code for the Scorpio Broker including the changes developed in and for CEF Odala can be found in the public Scorpio github repository.
http://github.com/scorpiobroker/scorpiobroker.git 


## License
for the ODALA project.

© 2023 Sirus

License EUPL 1.2

![](https://ec.europa.eu/inea/sites/default/files/ceflogos/en_horizontal_cef_logo_2.png)

