

# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. I was passed the following value: $${sample_var}"

  vars = {
    sample_var = var.sample_var
  }
}

module "tf_module_test" {
  source = "https://dev-cm.globalcatalog.test.cloud.ibm.com/api/v1-beta/catalogs/8154adb9-107c-4d78-83b7-eb92c6b73092/offerings/ca90653d-5a5b-4f7f-9a64-cb52c7b5a08c/source?archive=tgz&kind=terraform&version=0.0.1"
  module_sample_var = "************** ${var.sample_var} ********** "
}
