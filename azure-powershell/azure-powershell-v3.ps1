param([string] $subscriptionId)

$output = 'subscriptionId: {0}' -f $subscriptionId
Write-Output $output

$DeploymentScriptOutputs = @{}
$DeploymentScriptOutputs['text'] = $output