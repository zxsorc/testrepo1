workflow stopWinServer {
	inlineScript {
		$Conn = Get-AutomationConnection -Name AzureRunAsConnection
		Connect-AzureRmAccount -ServicePrincipal -Tenant $Conn.TenantID `
			-ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint
		
	}
}