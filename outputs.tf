output "rendered_template" {
  value = data.template_file.test.rendered
}

# outputs from child modules -- The outputs defined in modules will not be available in terraform apply logs.
# We have to explicitly use the outputs of module and print it again here
output "op-1" {
  value = module.tf_module_test.rendered_template
}
