function Zero-Padding() {
   $str = [String]$ARGS[0]
   $length = $ARGS[1]

   While ( $str.Length -lt $length ) {
      $str = "0$str"
   }

   Return $str
}

$chiban = [String]$ARGS[0] -Split("-")

$oya = Zero-Padding $chiban[0] 4
if ( $chiban.Length -eq 2 ) {
   $eda = Zero-Padding $chiban[1] 3
} else {
   $eda = "000"
}

$chiban = "$oya-$eda"

Write-Output $chiban