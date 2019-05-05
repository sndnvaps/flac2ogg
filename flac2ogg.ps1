# This PowerShell script is use to convert flac music to ogg music
# use ffmpeg binary
# command:
#        flac2ogg.ps1 -Input_flac music_input.flac -Output music_output.ogg
$FFMPEG=".\ffmpeg.exe"



Function flac2ogg {

param($Input_flac,$Output)

     if ($args.Count -ne 5) {
       flac2oggHelp
       Write-Host $Input_flac $Output
     }
     
    if(Test-path $FFMPEG) {
        .\ffmpeg.exe  -i $Input_flac -acodec libvorbis $Output
    }
}

Function flac2oggHelp {
    Write-Host "command:"
    Write-Host "       flac2ogg.ps1 -Input_flac music_input.flac -Output music_output.ogg"
}

flac2ogg -Input_flac $args[1] -Output $args[3]

