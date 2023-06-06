module "eks" {
    source = "terraform-aws-modules/eks/aws"
   
    #cluster_name = local.cluster_name
    cluster_name = "myapp-eks-cluster"
    cluster_version = "1.26"

    subnet_ids = module.myapp-vpc.private_subnets
vpc_id = module.myapp-vpc.vpc_id

    tags = {
        environment = "development"
        application = "myapp"
    }
}
