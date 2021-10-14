param([string] $subscriptionId)

$output = 'subscriptionId: {0}' -f $subscriptionId
Write-Output $output

Connect-AzAccount -Subscription $subscriptionId


$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output