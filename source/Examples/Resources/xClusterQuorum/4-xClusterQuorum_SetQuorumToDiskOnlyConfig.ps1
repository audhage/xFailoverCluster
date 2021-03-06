<#PSScriptInfo

.VERSION 1.0.0

.GUID 42e9915a-8da3-437c-8efe-7a1bc8481973

.AUTHOR DSC Community

.COMPANYNAME DSC Community

.COPYRIGHT DSC Community contributors. All rights reserved.

.TAGS DSCConfiguration

.LICENSEURI https://github.com/dsccommunity/xFailOverCluster/blob/master/LICENSE

.PROJECTURI https://github.com/dsccommunity/xFailOverCluster

.ICONURI https://dsccommunity.org/images/DSC_Logo_300p.png

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
First version.

.PRIVATEDATA 2016-Datacenter,2016-Datacenter-Server-Core

#>

#Requires -Module xFailOverCluster

<#
    .DESCRIPTION
        This example shows how to set the quorum in a failover cluster to use
        disk only.

    .NOTES
       This example assumes the failover cluster is already present.
#>

Configuration xClusterQuorum_SetQuorumToDiskOnlyConfig
{
    Import-DscResource -ModuleName xFailOverCluster

    Node localhost
    {
        xClusterQuorum 'SetQuorumToDiskOnly'
        {
            IsSingleInstance = 'Yes'
            Type             = 'DiskOnly'
            Resource         = 'Witness Cluster Disk'
        }
    }
}
