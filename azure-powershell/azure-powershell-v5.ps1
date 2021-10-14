param([string] $subscriptionId)

$output = 'subscriptionId: {0}' -f $subscriptionId
Write-Output $output

## WARNING: Interactive authentication is not supported in this session, please run cmdlet 'Connect-AzAccount -UseDeviceAuthentication'.
# Connect-AzAccount -Subscription $subscriptionId

## The following seems to hang when running inside the deploymentScripts context.
# Connect-AzAccount -UseDeviceAuthentication

$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output