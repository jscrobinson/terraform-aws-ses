# Module      : DOMAIN IDENTITY
# Description : Terraform module to create domain identity using domain
output "domain_identity_arn" {
  value       = join("", aws_ses_domain_identity.default.*.arn)
  description = "ARN of the SES domain identity."
}

output "ses_user_key_id" {
  value = aws_iam_access_key.default.id
}

output "ses_user_key_secret" {
  value = aws_iam_access_key.default.secret
}

output "ses_smtp_password" {
  value = aws_iam_access_key.default.ses_smtp_password
}