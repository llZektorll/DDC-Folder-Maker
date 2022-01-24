$folder="C:\Test";             # Directory to place the new folders in.
$txtFile="C:\Test\Export.txt"; # File with list of new folder-names
$pattern="\d+.+";              # Pattern that lines must match      


get-content $txtFile | %{

    if($_ -match $pattern)
    {
        mkdir "$folder\$_";
    }
}
