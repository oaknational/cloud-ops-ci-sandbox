module "vercel" {
  source                           = "github.com/oaknational/oak-terraform-modules//modules/vercel_project?ref=5b55cf17c6d84ee33e6b6586062a0444a37377f5" # v1.6.0
  build_type                       = "function"
  cloudflare_zone_domain           = "domain"
  environment_variables            = []
  framework                        = "other"
  project_visibility               = "private"
  git_repo                         = "oaknational/cloud-ops-ci-sandbox"
  protection_bypass_for_automation = false
  skew_protection                  = "1 day"
}