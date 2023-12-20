# Variables
$currentDate = Get-Date -Format "yyyy-MM-dd"
$exportPath = 'Export-' + $currentDate + '.json'

Import-Module AzSentinel

Export-AzSentinel -workspace $workspaceName -Outputfolder ".\" -Kind Alert

Get-ChildItem -Filter "Alert*" -File | 
   Rename-Item -NewName $exportPath 


# Set the subscription context
#Set-AzContext -SubscriptionId $subscriptionId

# Get the list of Azure Sentinel analytic rules
#$rules = Get-AzSentinelAlertRule -ResourceGroupName $resourceGroupName -WorkspaceName $workspaceName -SubscriptionId $subscriptionId

# Export the rules to a JSON file
#$rules | ConvertTo-Json | Out-File -FilePath $ruleExportPath

# Output the total number of rules extracted
#Write-Host "Total rules extracted: $($rules.Count)"