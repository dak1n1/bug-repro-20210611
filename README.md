# bug-repro-20210611
Reproducer for kubernetes-alpha provider crash

## Run the reproducer

```
export KUBE_CONFIG_PATH=$KUBECONFIG

terraform init
terraform validate
terraform plan
```

## Result

```
Stack trace from the terraform-provider-kubernetes-alpha_v0.5.0_x5 plugin:

panic: lists must only contain one type of element, saw tftypes.Object["appProtocol":tftypes.String, "name":tftypes.String, "nodePort":tftypes.Number, "port":tftypes.Number, "protocol":tftypes.String, "targetPort":tftypes.Number] and tftypes.Object["appProtocol":tftypes.String, "name":tftypes.String, "nodePort":tftypes.Number, "port":tftypes.Number, "protocol":tftypes.String, "targetPort":tftypes.String]
```

