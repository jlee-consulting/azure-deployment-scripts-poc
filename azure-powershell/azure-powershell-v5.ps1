param([string] $subscriptionId)

$output = 'subscriptionId: {0}' -f $subscriptionId
Write-Output $output

## WARNING: Interactive authentication is not supported in this session, please run cmdlet 'Connect-AzAccount -UseDeviceAuthentication'.
# Connect-AzAccount -Subscription $subscriptionId

## Connect-AzAccount -UseDeviceAuthentication cannot be used inside the deploymentScripts context.
## DeviceCodeCredential authentication failed: Verification code expired before contacting the server
# Connect-AzAccount -UseDeviceAuthentication

Get-AzResourceGroup

$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output