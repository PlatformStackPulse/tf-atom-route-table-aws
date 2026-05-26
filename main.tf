resource "aws_route_table" "this" {
  count = module.this.enabled ? 1 : 0

  vpc_id = var.vpc_id

  tags = merge(module.this.tags, { Name = module.this.id })
}
