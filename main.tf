

# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. I was passed the following value: $${sample_var}"

  vars = {
    sample_var = var.sample_var
  }
}

module "tf_module_test" {
  source = "https://cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/catalogs/54b7df75-df03-44dc-95c5-06822d514035/offerings/08a3aaab-54af-48e9-8285-b34451c7cc2b/source?archive=tgz&kind=terraform&version=0.0.1"
  module_sample_var = "************** ${var.sample_var} ********** "
}
