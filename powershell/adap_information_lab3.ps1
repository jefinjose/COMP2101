Get-Ciminstance -ClassName win32_networkadapterconfiguration |
where { $_.ipenabled -eq "true"}| 
Format-Table -AutoSize Description, Index, IPAddress, IPSubnet,
@{n="DNSServersearchorder";
  e={Switch($_.DNSServersearchorder)
    {
      $NULL{
        $variable1="No Data Found.";
        $variable1
    }
   };
   if($null -ne $_.DNSServerSearchorder)
     {
     $_.DNSServerSearchorder
     }
    }
  },
@{n="DNSdomain";
  e={Switch($_.DNSdomain)
    {
      $NULL{
        $variable2="No Data Found.";
        $variable2
    }
   };
   if($null -ne $_.DNSdomain)
     {
     $_.DNSdomain
     }
    }
  }
