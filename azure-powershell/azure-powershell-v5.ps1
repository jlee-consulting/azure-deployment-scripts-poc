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

## Insufficient privileges to complete the operation.
# Get-AzADApplication

## Get-AzureADMSApplication: The term 'Get-AzureADMSApplication' is not recognized as a name of a cmdlet, function, script file, or executable program.
## Check the spelling of the name, or if a path was included, verify that the path is correct and try again.
# Get-AzureADMSApplication

Get-AZWebApp

Get-AzAccessToken 

## Import-Module: The specified module 'Pnp.Powershell' was not loaded because no valid module file was found in any module directory.
# Import-Module Pnp.Powershell

## Get-PnPTenantSite: The term 'Get-PnPTenantSite' is not recognized as a name of a cmdlet, function, script file, or executable program.
## Check the spelling of the name, or if a path was included, verify that the path is correct and try again.

Install-Module SharePointPnPPowerShellOnline -SkipPublisherCheck -AllowClobber -AcceptLicense -Force

## Get-PnPTenantSite: There is currently no connection yet. Use Connect-PnPOnline to connect.
# Get-PnPTenantSite

## Get-PnPGroup: There is currently no connection yet. Use Connect-PnPOnline to connect.
# Get-PnPGroup

## Get-PnPList: There is currently no connection yet. Use Connect-PnPOnline to connect.
# Get-PnpList


$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output