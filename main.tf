

# Create an arbitrary local resource
data "template_file" "test" {
  template = "Hello, I am a template. I was passed the following value: $${sample_var}"

  vars = {
    sample_var = var.sample_var
  }
}

module "sleepy-modules" {
 # source = "./sleepy-modules"
  source = "git@github.ibm.com:gshamann/terraform_13_modules.git//sleepy-modules"
  module_sample_var = "************** ${var.sample_var} ********** "
}
