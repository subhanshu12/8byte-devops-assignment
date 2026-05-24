# Grafana Dashboard Setup

## Login

Access Grafana:

http://localhost:3000

Username:
admin

Password:
Retrieved from Kubernetes secret

---

## Import Dashboards

Navigate:

Dashboards → Import

---

## Recommended Dashboard IDs

Kubernetes Cluster Monitoring:
315

Node Exporter Full:
1860

Kubernetes Pod Monitoring:
6417

---

## Data Source

Select:
Prometheus

---

## Verify Dashboards

Dashboards should display:

- CPU metrics
- Memory metrics
- Disk metrics
- Network metrics
- Pod health
- Node status