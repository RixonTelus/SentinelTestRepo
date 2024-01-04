# Variables
$currentDate = Get-Date -Format "yyyy-MM-dd-HH-mm"
$exportPath = 'RawExport-' + $currentDate + '.json'

#Import-Module AzSentinel

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"

$response = Invoke-RestMethod 'https://management.azure.com/subscriptions/26613501-ed23-4f10-8aed-bd633914579d/resourceGroups/sales-rg/providers/Microsoft.OperationalInsights/workspaces/salesla/providers/Microsoft.SecurityInsights/alertRules?api-version=2023-02-01' -Method 'GET' -Headers $headers
$response | ConvertTo-Json -Depth 100 | Set-Content -Path $exportPath 






#Export-AzSentinel -workspace $workspaceName -Outputfolder ".\" -Kind Alert -TemplatesKind "Scheduled,MicrosoftSecurityIncidentCreation"

#Get-ChildItem -Filter "Alert*" -File | Rename-Item -NewName $exportPath 















# Set the subscription context
#Set-AzContext -SubscriptionId $subscriptionId

# Get the list of Azure Sentinel analytic rules
#$rules = Get-AzSentinelAlertRule -ResourceGroupName $resourceGroupName -WorkspaceName $workspaceName -SubscriptionId $subscriptionId

# Export the rules to a JSON file
#$rules | ConvertTo-Json | Out-File -FilePath $ruleExportPath

# Output the total number of rules extracted
#Write-Host "Total rules extracted: $($rules.Count)"