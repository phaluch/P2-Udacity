variable "path_source_code" {
  default = "lambda_function"
}

variable "function_name" {
  default = "aws_lambda_test"
}

variable "lambda_role_arn" {
    default = "arn:aws:iam::674259266005:role/service-role/udacity-lambda-role-ufswzpbv"
}

variable "lambda_file_name" {
    default = "greet_lambda.zip"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}

variable "runtime" {
  default = "python3.8"
}

variable "output_path" {
  description = "Path to function's deployment package into local filesystem. eg: /path/lambda_function.zip"
  default = "lambda_function.zip"
}

variable "bucket_name" {
    default = "my-udacity-lambda-bucket-name"
}