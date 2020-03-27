function newAppRegistration {
    [cmdletbinding(ConfirmImpact = 'low')]
    param(
        [string]$name = "cloudskills"
    )
    
    # Create App Registration
    $appCreation = az ad sp create-for-rbac --skip-assignment --name $name | ConvertFrom-Json
    $appCreation
}