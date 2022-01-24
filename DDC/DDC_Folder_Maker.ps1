$folder="X:\Test";             # Directory to place the new folders in.
$txtFile="X:\Test\Export.txt"; # File with list of new folder-names
$pattern="\d+.+";              # Pattern that lines must match      


get-content $txtFile | %{

    if($_ -match $pattern)
    {
        mkdir "$folder\$_";
    }
}