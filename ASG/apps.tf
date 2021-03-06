module "app1" {
  source           = "./module"
  region           = "us-east-1"
  image_owner      = "158199823755" # Canonical
  desired_capacity = 1

  max_size = 2

  min_size = 1


    #depends on network team
  cidr_block          =   "10.0.0.0/16"
  public_cidr_block1  =   "10.0.101.0/24"
  public_cidr_block2  =   "10.0.102.0/24"
  public_cidr_block3  =   "10.0.103.0/24"

  private_cidr_block1 =   "10.0.1.0/24"
  private_cidr_block2 =   "10.0.2.0/24"
  private_cidr_block3 =   "10.0.3.0/24"

  tags = {
    Name           = "My"
  }
}
