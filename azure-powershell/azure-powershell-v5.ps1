param([string] $subscriptionId)

$output = 'subscriptionId: {0}' -f $subscriptionId
Write-Output $output

## WARNING: Interactive authentication is not supported in this session, please run cmdlet 'Connect-AzAccount -UseDeviceAuthentication'.
# Connect-AzAccount -Subscription $subscriptionId

## Connect-AzAccount -UseDeviceAuthentication cannot be used inside the deploymentScripts context.
## DeviceCodeCredential authentication failed: Verification code expired before contacting the server
# Connect-AzAccount -UseDeviceAuthentication

## WARNING: Unable to acquire token for tenant 'organizations' with error 'ManagedIdentityCredential authentication unavailable. No Managed Identity endpoint found.'

Get-AzSubscription

Get-AzResourceGroup

Get-AZTenant

Get-AzADApplication

## Get-AzureADMSApplication: The term 'Get-AzureADMSApplication' is not recognized as a name of a cmdlet, function, script file, or executable program.
## Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# Get-AzureADMSApplication

Get-AZWebApp

Get-AzAccessToken 

# Import-Module Pnp.Powershell

## Get-PnPTenantSite: The term 'Get-PnPTenantSite' is not recognized as a name of a cmdlet, function, script file, or executable program.
## Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# Get-PnPTenantSite
# Get-PnPGroup
# Get-PnpList


$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output