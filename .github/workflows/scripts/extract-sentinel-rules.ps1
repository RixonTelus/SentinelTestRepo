# Variables

Write-Host "test"

# Set the subscription context
#Set-AzContext -SubscriptionId $subscriptionId

# Get the list of Azure Sentinel analytic rules
$rules = Get-AzSentinelAlertRule -ResourceGroupName $resourceGroupName -WorkspaceName $workspaceName

# Export the rules to a JSON file
$rules | ConvertTo-Json | Out-File -FilePath "./current-sentinel-rules.json"

# Output the total number of rules extracted
Write-Host "Total rules extracted: $($rules.Count)"