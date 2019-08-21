<!-- This file was automatically generated by the `geine`. Make all changes to `README.yaml` and run `make readme` to rebuild this file. -->

<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform AWS SES
</h1>

<p align="center" style="font-size: 1.2rem;">
    Terraform module to create an SES Identity with SES IAM user on AWS.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v0.12-green" alt="Terraform">
</a>
<a href="LICENSE.md">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="Licence">
</a>


</p>
<p align="center">

<a href='https://facebook.com/sharer/sharer.php?u=https://github.com/clouddrove/terraform-aws-ses'>
  <img title="Share on Facebook" src="https://user-images.githubusercontent.com/50652676/62817743-4f64cb80-bb59-11e9-90c7-b057252ded50.png" />
</a>
<a href='https://www.linkedin.com/shareArticle?mini=true&title=Terraform+AWS+SES&url=https://github.com/clouddrove/terraform-aws-ses'>
  <img title="Share on LinkedIn" src="https://user-images.githubusercontent.com/50652676/62817742-4e339e80-bb59-11e9-87b9-a1f68cae1049.png" />
</a>
<a href='https://twitter.com/intent/tweet/?text=Terraform+AWS+SES&url=https://github.com/clouddrove/terraform-aws-ses'>
  <img title="Share on Twitter" src="https://user-images.githubusercontent.com/50652676/62817740-4c69db00-bb59-11e9-8a79-3580fbbf6d5c.png" />
</a>

</p>
<hr>


We eat, drink, sleep and most importantly love **DevOps**. We are working towards stratergies for standardizing architecture while ensuring security for the infrastructure. We are strong believer of the philosophy <b>Bigger problems are always solved by breaking them into smaller manageable problems</b>. Resonating with microservices architecture, it is considered best-practice to run database, cluster, storage in smaller <b>connected yet manageable pieces</b> within the infrastructure.

This module is basically combination of [Terraform open source](https://www.terraform.io/) and includes automatation tests and examples. It also helps to create and improve your infrastructure with minimalistic code instead of maintaining the whole infrastructure code yourself.

We have [*fifty plus terraform modules*][terraform_modules]. A few of them are comepleted and are available for open source usage while a few others are in progress.




## Prerequisites

This module has a few dependencies:

- [Terraform 0.12](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Go](https://golang.org/doc/install)
- [github.com/stretchr/testify/assert](https://github.com/stretchr/testify)
- [github.com/gruntwork-io/terratest/modules/terraform](https://github.com/gruntwork-io/terratest)






## Examples

**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/clouddrove/terraform-aws-ses/releases).


### Simple Example
Here is an example of how you can use this module in your inventory structure:
```hcl
module "ses" {
  source              = "git::https://github.com/clouddrove/terraform-aws-ses.git"
  domain              = "clouddrove.com"
  iam_name            = "ses-user"
  zone_id             = "DSSCTGRTHD"
  enable_verification = true
}
```



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cname_type | CNAME type for Record Set. | string | `CNAME` | no |
| domain | Domain to use for SES. | string | - | yes |
| enable_domain | Control whether or not to enable domain. | bool | `true` | no |
| enable_filter | Control whether or not to enable receipt filter. | bool | `false` | no |
| enable_mail_from | Control whether or not to enable mail from domain. | bool | `false` | no |
| enable_mx | Control whether or not to enable mx DNS recodrds. | bool | `false` | no |
| enable_policy | Control whether identity policy create for SES. | bool | `false` | no |
| enable_spf_domain | Control whether or not to enable enable spf domain. | bool | `false` | no |
| enable_template | Control whether create a template for emails. | bool | `false` | no |
| enable_verification | Control whether or not to verify SES DNS records. | bool | `false` | no |
| filter_cidr | The IP address or address range to filter, in CIDR notation. | string | `` | no |
| filter_name | The name of the filter. | string | `` | no |
| filter_policy | Block or Allow filter. | string | `` | no |
| iam_name | IAM username. | string | `` | no |
| mail_from_domain | Subdomain (of the route53 zone) which is to be used as MAIL FROM address. | string | `` | no |
| mx_type | MX type for Record Set. | string | `MX` | no |
| policy_name | Name of the policy. | string | `` | no |
| ses_records | Additional entries which are added to the _amazonses record. | list(string) | `<list>` | no |
| template_html | The HTML body of the email. Must be less than 500KB in size, including both the text and HTML parts. | string | `` | no |
| template_name | The name of the template. Cannot exceed 64 characters. You will refer to this name when you send email. | string | `` | no |
| template_subject | The subject line of the email. | string | `` | no |
| text | The email body that will be visible to recipients whose email clients do not display HTML. | string | `` | no |
| txt_type | Txt type for Record Set. | string | `TXT` | no |
| zone_id | Route53 host zone ID to enable SES. | string | `` | no |



## Testing

In this module testing is performed with [terratest](https://github.com/gruntwork-io/terratest) and it creates a small piece of infrastructure, matches the output like ARN, ID and Tags name etc and destroy infrastructure in your AWS account. This testing is written in GO, so you need a [GO environment](https://golang.org/doc/install) in your system.

You need to run the following command in the testing folder:
```hcl
  go test -run Test
```



## Feedback
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/clouddrove/terraform-aws-ses/issues), or feel free to drop us an email at [hello@clouddrove.com](mailto:hello@clouddrove.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/clouddrove/terraform-aws-ses)!

## About us

At [CloudDrove][website], we offer expert guidance, implementation support and services to help organisations accelerate their journey to the cloud. Our services include docker and container orchestration, cloud migration and adoption, infrastructure automation, application modernisation and remediation, and performance engineering.

<p align="center">We are <b> The Cloud Experts!</b></p>
<hr />
<p align="center">We ❤️  <a href="https://github.com/clouddrove">Open Source</a> and you can check out <a href="https://github.com/clouddrove">our other modules</a> to get help with your new Cloud ideas.</p>

  [website]: https://clouddrove.com
  [github]: https://github.com/clouddrove
  [linkedin]: https://cpco.io/linkedin
  [twitter]: https://twitter.com/clouddrove/
  [email]: https://clouddrove.com/contact-us.html
  [terraform_modules]: https://github.com/clouddrove?utf8=%E2%9C%93&q=terraform-&type=&language=