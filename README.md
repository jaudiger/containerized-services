# Containerized services

## Instructions

Working in the cloud involves using third-party services to store data for stateless applications, send messages between micro-services, manage authentication, etc. To set up these services locally, I containerize a few of these services. It lets me quickly spawn an instance I'm interested in on my machine. And I tend to always integrate/use/test the most up-to-date version.

Here is a list of the services that can be deployed using this repository:

- Elasticsearch:
  - [Cluster](./elasticsearch/cluster)
  - [Secure cluster](./elasticsearch/secure-cluster)
  - [Single node](./elasticsearch/single-node)
- Grafana:
  - [Single node](./grafana/single-node)
- Jaeger:
  - [Single node](./jaeger/single-node)
- Kafka:
  - [Cluster](./kafka/cluster)
  - [Single node](./kafka/single-node)
- Kibana:
  - [Single node](./kibana/single-node)
- Mongo:
  - [Cluster](./mongo/cluster)
  - [Single node](./mongo/single-node)
- Prometheus:
  - [Single node](./prometheus/single-node)
- Redis:
  - [Cluster](./redis/cluster)
  - [ReplicaSet](./redis/replica-set)
  - [Single node](./redis/single-node)
- Vault:
  - [Single node](./vault/single-node)

Of course, the deployment of these services are not meant for production usage, but rather for development and testing purposes. From a security perspective, these services are not hardened and should not be exposed to the internet, there is most of the time no authentication system, nor encryption layer. **They are meant to be used in your local machine only.**

To spawn locally, you can use the following command:

```bash
docker compose -f SERVICE/USAGE/docker-compose.yml up
```

To remove the volumes created and start next time from scratch, use the following command:

```bash
docker compose -f SERVICE/USAGE/docker-compose.yml down --remove-orphans --volumes
```

## CI / CD

Dependabot is configured to automatically update dependencies (Docker Compose).

## Repository configuration

The settings of this repository are managed from the [gitops-deployments](https://github.com/jaudiger/gitops-deployments) repository using Terraform. The actual configuration applied is located in the Terraform module [`modules/github-repository`](https://github.com/jaudiger/gitops-deployments/tree/main/modules/github-repository).
