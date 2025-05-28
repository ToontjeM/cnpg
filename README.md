# CloudNativePG
In this demo shows basic operating procedures using the EDB CloudNativePG (CNPG) operator for kubernetes.

## Demo prerequisites
This demo has been developed using Docker for Desktop on an Intel-based MacBook Pro. 

# Demo flow
`01_install_plugin.sh` installs the CNPG plugin for `kubectl`.
`02_install_operator.sh` installs the CNPG operator deployment.
You can use `03_check_operator_installed.sh` to check if the deployment is up and running.
`04_get_cluster_config_file.sh` shows you the various specifications we are going to deploy. 
Take note of the `ClusterImageCatalog` section which shows which Postgres images are allowed to be deployed. 
Also check the cluster specification and note that we are deploying PostgreSQL v16.4, which in the ClusterImageCatalogis defined as the v16 image to be used.
`05_install_cluster.sh` performs the actual deployment of the cluster.
Open a new pane in your terminal and run `06_show_status.sh` to get a continuous update of what is happening in your cluster.
Once the cluster is in healthy state, run `07_insert_data.sh` to insert data in the database. Notice the LSNs moving as replication is happening.
One of the many questions we get is how to do minor and major upgrades of Postgres in kubernetes. `08_minor_update.sh` shows you a minor upgrade by updating the ClusterImageCatalog.
`09_major_upgrade.sh` shows you a major version upgrade from Postgres 16 to 17 using the cluster specification file.

TBC


Open another session and execute MinIO server (S3 Object Storage compatible):
Please, check the IP of your computer and replace in file cluster-example-upgrade.yaml.

- **URL:** http://127.0.0.1:9001
- **User:** admin
- **Password:** password
```
./start_minio_docker_server.sh
```
Go back to the previous session and execute:
```
./07_insert_data.sh
./08_promote.sh
./09_upgrade.sh
./10_backup_cluster.sh
./11_backup_describe.sh
./12_restore_cluster.sh
./13_failover.sh
./14_scale_out.sh
./15_scale_down.sh

# PITR
./16_pitr_insert_two_lines.sh
./17_pitr_backup.sh
./18_pitr_insert_new_line.sh
./19_pitr_restore_line_one.sh
```
# Major upgrade
Major upgrade feature has been introduced in 1.16 version.
In this demo I show you how to upgrade your cluster from PosgreSQL v13 to v14.
```
./20_create_cluster_v13.sh
./21_insert_data_cluster_v13.sh
./22_verify_data_inserted.sh
./23_upgrade_v13_to_v14.sh
./24_verify_data_migrated.sh
```
# Fencing and Hibernation
```
./30_fencing_on.sh
./31_fencing_off.sh
./32_hibernation_on.sh
./33_hibernation_off.sh
```
# Operator management
```
./40_operator_list_images.sh
./41_operator_upgrade.sh
```

To delete your cluster execute:
```
./delete_all_clusters.sh
```

If you want to delete and create your Kind and K3d clusters and pull the PostgreSQL images from Docker to Kind or/and K3d, execute this script:
```
# Warning: script adapted for K3d
./99_remove_cluster.sh
```
# Monitoring with Prometheus/Grafana
```
cd monitoring
./01_install_prometheus_repo.sh
./02_prometheus_operator.sh
./03_prometheus_rules.sh
./04_grafana_dashboard.sh
./05_port_forwarding_prometheus_grafana.sh

./99_remove_monitoring.sh
```

- To connect to Grafana dashboard: http://localhost:3000
  - **User:** admin
  - **Password:** prom-operator

- To connect to Prometheus dashboard: http://localhost:9090

![](./images/grafana.png)
![](./images/prometheus.png)


# How to deploy and access the Kubernetes Dashboard
```
./dashboard_install.sh
```
# Uninstall Kubernetes Dashboard
```
./dashboard_uninstall.sh
```

# Useful commands
```
./get_ip.sh
```
