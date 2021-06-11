resource "kubernetes_manifest" "consul" {
  provider = kubernetes-alpha
  for_each = fileset(path.module, "consul/generated/*")
  manifest = yamldecode(file(each.key))
}
