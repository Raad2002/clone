# $ErrorActionPreference = 'SilentlyContinue'
# $wshell = New-Object -ComObject Wscript.Shell
# $Button = [System.Windows.MessageBoxButton]::YesNoCancel
# $ErrorIco = [System.Windows.MessageBoxImage]::Error
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
	Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
	Exit
}

Write-Host "Checking Chocolatey..."


# Check if winget is installed
if (Test-Path C:\ProgramData\chocolatey\choco.exe){
    'Chocolatey Already Installed'
}  
else{
    # Installing winget from the Microsoft Store
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')

# Place xaml code from visual studio in here string (in the blank line between @ symbols)
$input = @’
<Window x:Name="my_app" x:Class="WpfApp1.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp1"
        mc:Ignorable="d"
        Title="My App and windows optimiser" Height="650" Width="560" WindowStartupLocation="CenterScreen" ResizeMode="NoResize">
    <TabControl Background="#FF2B00FF">
        <TabItem Header="App instaler">
            <Grid Background="#FF252525">
                <Grid.RowDefinitions>
                    <RowDefinition Height="160*"/>
                    <RowDefinition Height="127*"/>
                </Grid.RowDefinitions>
                <Label Content="Mead by raad" HorizontalAlignment="Center" Margin="0,10,0,0" VerticalAlignment="Top" Background="Transparent" FontFamily="Bahnschrift Condensed" FontSize="18" Foreground="Red" Height="32" Width="90"/>
                <Label Content="Chose app when you need to Install/Unistall" HorizontalAlignment="Left" Margin="75,26,0,0" VerticalAlignment="Top" FontSize="16" FontFamily="Segoe Print" Background="Transparent" Foreground="#FFE8D977" Height="38" Width="368"/>
                <CheckBox x:Name="Chrome_CheckBox" Content="Chrome" HorizontalAlignment="Left" Margin="25,78,0,0" VerticalAlignment="Top" Foreground="White" IsChecked="False" FontSize="14" RenderTransformOrigin="1.041,0.566" Height="18" Width="132"/>
                <CheckBox x:Name="Fierfox_CheckBox" Content="Fierfox" HorizontalAlignment="Left" Margin="25,101,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="132"/>
                <CheckBox x:Name="Breave_CheckBox" Content="Breave" HorizontalAlignment="Left" Margin="25,124,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="132"/>
                <CheckBox x:Name="Discord_CheckBox" Content="Discord" HorizontalAlignment="Left" Margin="25,147,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="132"/>
                <CheckBox x:Name="ONLYOFFICE_CheckBox" Content="ONLYOFFICE" HorizontalAlignment="Left" Margin="25,170,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" RenderTransformOrigin="0.757,0.431" Height="18" Width="132"/>
                <CheckBox x:Name="Everything_CheckBox" Content="Everything" HorizontalAlignment="Left" Margin="25,193,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="132"/>
                <CheckBox x:Name="powershell_CheckBox" Content="Powershell" HorizontalAlignment="Left" Margin="25,216,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="132"/>
                <CheckBox x:Name="Visual_Studio_Community22_CheckBox" Content="Visual Studio Com22" HorizontalAlignment="Left" Margin="25,262,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="132" RenderTransformOrigin="0.573,0.978"/>
                <CheckBox x:Name="Visual_Studio_Code_CheckBox" Content="Visual Studio Code" HorizontalAlignment="Left" Margin="25,239,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="132"/>
                <CheckBox x:Name="Steam_CheckBox" Content="Steam" HorizontalAlignment="Left" Margin="25,285,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="132"/>
                <CheckBox x:Name="DS4Windows_CheckBox" Content="DS4Windows" HorizontalAlignment="Left" Margin="162,80,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <CheckBox x:Name="NET_4_8_CheckBox" Content=".NET 4.8" HorizontalAlignment="Left" Margin="295,80,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="libreoffice_CheckBox" Content="libreoffice" HorizontalAlignment="Left" Margin="407,80,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" RenderTransformOrigin="1.171,-0.547" Height="18" Width="127"/>
                <CheckBox x:Name="NanaZip_CheckBox" Content="NanaZip" HorizontalAlignment="Left" Margin="162,103,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <CheckBox x:Name="WinRAR_CheckBox" Content="WinRAR" HorizontalAlignment="Left" Margin="162,126,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <CheckBox x:Name="NET_5_0_CheckBox" Content=".NET 5.0" HorizontalAlignment="Left" Margin="295,103,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="Revo_Uninstaller_CheckBox" Content="Revo Uninstaller" HorizontalAlignment="Left" Margin="407,103,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="127"/>
                <CheckBox x:Name="NET_6_0_CheckBox" Content=".NET 6.0" HorizontalAlignment="Left" Margin="295,126,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="Geek_Uninstaller_CheckBox" Content="Geek Uninstaller" HorizontalAlignment="Left" Margin="407,126,0,0" VerticalAlignment="Top" Foreground="White" RenderTransformOrigin="1.395,1.672" Height="18" Width="127"/>
                <CheckBox x:Name="Epic_Games_Launcher_CheckBox" Content="Epic Games " HorizontalAlignment="Left" Margin="162,149,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <CheckBox x:Name="PDF_XChange_Viewer_CheckBox" Content="PDFXChange Viewer" HorizontalAlignment="Left" Margin="162,172,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="130"/>
                <CheckBox x:Name="PDF24_CreatorCheckBox" Content="PDF24 Creator" HorizontalAlignment="Left" Margin="162,195,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <CheckBox x:Name="PDF_XChange_Editor_CheckBox" Content="PDF-XChange Editor" HorizontalAlignment="Left" Margin="162,218,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="128"/>
                <CheckBox x:Name="VLC_media_player_CheckBox" Content="VLC media player" HorizontalAlignment="Left" Margin="162,241,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <CheckBox x:Name="Sublime_Text_2_CheckBox" Content="Sublime Text 2" HorizontalAlignment="Left" Margin="162,287,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" RenderTransformOrigin="0.158,1.726" Height="18" Width="128"/>
                <CheckBox x:Name="NET_7_0_CheckBox" Content=".NET 7.0" HorizontalAlignment="Left" Margin="295,149,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="NET_8_0_CheckBox" Content=".NET 8.0" HorizontalAlignment="Left" Margin="295,172,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="VisualC22_CheckBox" Content="Visual C++22" HorizontalAlignment="Left" Margin="295,195,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="Visual_C_15_CheckBox" Content="Visual C++15" HorizontalAlignment="Left" Margin="295,218,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="Python_3_6_CheckBox" Content="Python 3.6" HorizontalAlignment="Left" Margin="295,241,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="FileZilla_CheckBox" Content="FileZilla" HorizontalAlignment="Left" Margin="295,264,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="Google_Drive_CheckBox" Content="Google Drive" HorizontalAlignment="Left" Margin="295,287,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="107"/>
                <CheckBox x:Name="Adobe_Acrobat_Reader_CheckBox" Content="Adobe Reader" HorizontalAlignment="Left" Margin="407,149,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="127"/>
                <CheckBox x:Name="rockstar_CheckBox" Content="rockstar luncher" HorizontalAlignment="Left" Margin="407,172,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="127"/>
                <CheckBox x:Name="AutoHotkey_CheckBox" Content="AutoHotkey" HorizontalAlignment="Left" Margin="407,195,0,0" VerticalAlignment="Top" Foreground="White" Height="18" Width="137" FontSize="14"/>
                <CheckBox x:Name="AnyDesk_CheckBox" Content="AnyDesk" HorizontalAlignment="Left" Margin="407,218,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="127" RenderTransformOrigin="0.504,1.044"/>
                <CheckBox x:Name="OBS_Studio_CheckBox" Content="OBS Studio" Margin="407,241,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18"/>
                <CheckBox x:Name="VirtualBox_CheckBox" Content="VirtualBox" HorizontalAlignment="Left" Margin="407,264,0,0" VerticalAlignment="Top" Foreground="White" FontSize="12" Height="18" Width="137"/>
                <CheckBox x:Name="Rufus_CheckBox" Content="Rufus" HorizontalAlignment="Left" Margin="407,287,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="127"/>
                <CheckBox x:Name="Paint_NET_CheckBox" Content="Paint.NET" HorizontalAlignment="Left" Margin="162,264,0,0" VerticalAlignment="Top" Foreground="White" FontSize="14" Height="18" Width="128"/>
                <TextBox x:Name="TextBox1" HorizontalAlignment="Center" Height="121" Margin="0,45,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="370" Grid.Row="1"/>
                <Button x:Name="Uninstall_Btn" Content="Uninstall" HorizontalAlignment="Left" Margin="260,186,0,0" VerticalAlignment="Top" Height="40" Width="172" Foreground="White" Background="#FFEA3E3E" FontFamily="Segoe UI Black" FontSize="20" FontWeight="Bold" Grid.Row="1"/>
                <Button x:Name="Install_Btn" Content="Install" HorizontalAlignment="Left" Margin="62,186,0,0" VerticalAlignment="Top" Height="40" Width="172"  FontSize="22" FontFamily="Segoe UI Black" Background="#FF3B2BFF" Foreground="#FFFFEA00" Grid.Row="1"/>
            </Grid>
        </TabItem>
        <TabItem Header="window optimisation">
            <TabItem.Background>
                <LinearGradientBrush EndPoint="0,1">
                    <GradientStop Color="#FFF0F0F0"/>
                    <GradientStop Color="White" Offset="1"/>
                </LinearGradientBrush>
            </TabItem.Background>
            <Grid Background="#FF252525">
                <Label Content="Mead by raad" HorizontalAlignment="Center" Margin="0,10,0,0" VerticalAlignment="Top" Background="Transparent" FontFamily="Bahnschrift Condensed" FontSize="18" Foreground="Red" Height="32" Width="90"/>
                <Label Content="Chose service when you need to Stop or Unistall" HorizontalAlignment="Left" Margin="75,26,0,0" VerticalAlignment="Top" FontSize="16" FontFamily="Segoe Print" Background="Transparent" Foreground="#FFE8D977" Height="38" Width="368"/>
                <Label Content="Dark Theme" HorizontalAlignment="Left" Margin="208,346,0,0" VerticalAlignment="Top" FontSize="16" FontFamily="Segoe Print" Background="Transparent" Foreground="#FFE8D977" Height="38" Width="114" RenderTransformOrigin="0.868,0.528"/>
                <Button x:Name="remouveblot" Content="Remove all bloatware" HorizontalAlignment="Left" Margin="20,102,0,0" VerticalAlignment="Top" Height="32" Width="230" FontSize="14" FontFamily="Arial Black" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="blot_reg_key" Content="Remorve bloatware regkey" HorizontalAlignment="Left" Height="32" Margin="272,102,0,0" VerticalAlignment="Top" Width="230" FontFamily="Arial Black" FontSize="14" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="revert_reg_chang" Content="Revert registry changes" HorizontalAlignment="Left" Margin="20,174,0,0" VerticalAlignment="Top" Height="32" Width="230" FontSize="14" FontFamily="Arial Black" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="telemetry" Content="Disable Telemetry / Tasks" HorizontalAlignment="Left" Height="32" Margin="272,174,0,0" VerticalAlignment="Top" Width="230" FontFamily="Arial Black" FontSize="14" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="dark_enable" Content="Enable" HorizontalAlignment="Left" Margin="20,389,0,0" VerticalAlignment="Top" Height="32" Width="230" FontSize="14" FontFamily="Arial Black" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="dark_disable" Content="Disable" HorizontalAlignment="Left" Height="32" Margin="272,389,0,0" VerticalAlignment="Top" Width="230" FontFamily="Arial Black" FontSize="14" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="onedreive" Content="Remorve One Drive" HorizontalAlignment="Left" Height="32" Margin="272,243,0,0" VerticalAlignment="Top" Width="230" FontFamily="Arial Black" FontSize="14" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <Button x:Name="disable_services" Content="Disable services" HorizontalAlignment="Left" Margin="20,243,0,0" VerticalAlignment="Top" Height="32" Width="230" FontSize="14" FontFamily="Arial Black" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
                <TextBox x:Name="TextBox2" HorizontalAlignment="Center" Height="113" Margin="0,436,0,0" TextWrapping="Wrap"  VerticalAlignment="Top" Width="358" Background="#FFB7B7B7"/>
                <Button x:Name="spotify_Install" Content="Install Spotify" HorizontalAlignment="Left" Height="32" Margin="144,309,0,0" VerticalAlignment="Top" Width="230" FontFamily="Arial Black" FontSize="14" Background="{DynamicResource {x:Static SystemColors.GrayTextBrushKey}}" BorderBrush="White" BorderThickness="3,3,3,3" Foreground="#FFE0D23E"/>
            </Grid>
        </TabItem>
    </TabControl>
</Window>
'@

$input = $input -replace '^<Window.*', '<Window' -replace 'mc:Ignorable="d"','' -replace "x:N",'N' 
[xml]$xaml = $input
$xmlreader=(New-Object System.Xml.XmlNodeReader $xaml)
$xamlForm=[Windows.Markup.XamlReader]::Load( $xmlreader )

$TextBox = $xamlForm.FindName("TextBox1")
$TextBox2 = $xamlForm.FindName("TextBox2")

$xaml.SelectNodes("//*[@Name]") | ForEach-Object -Process {
    Set-Variable -Name ($_.Name) -Value $xamlForm.FindName($_.Name)
    }

# code to run before button click event
#-----------------------------------
$Install_Btn.Add_Click({

    if ($Chrome_CheckBox.IsChecked) {
        $command = "choco install googlechrome --version 122.0.6261.39 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Chrome terminee." + "`r`n"
    }
    if ($Fierfox_CheckBox.IsChecked) {
        $command = "choco install firefox --version 122.0.1 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Firefox terminee." + "`r`n"
    }
    if ($Breave_CheckBox.IsChecked) {
        $command = "choco install brave --version 1.62.165 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Brave terminee." + "`r`n"
    }
    if ($Discord_CheckBox.IsChecked) {
        $command = "choco install discord --version 1.0.9005 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Discord terminee." + "`r`n"
    }
    if ($ONLYOFFICE_CheckBox.IsChecked) {
        $command = "choco install onlyoffice --version 8.0.0 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de ONLYOFFICE terminee." + "`r`n"
    }
    if ($Everything_CheckBox.IsChecked) {
        $command = "choco install everything --version 1.4.11024 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Everything terminee." + "`r`n"
    }
    if ($powershell_CheckBox.IsChecked) {
        $command = "choco install powershell.portable --version 7.1.3 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de PowerShell terminee." + "`r`n"
    }
    if ($Visual_Studio_Code_CheckBox.IsChecked) {
        $command = "choco install vscode -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Vscode terminee." + "`r`n"
    }
        if ($Visual_Studio_Community22_CheckBox.IsChecked) {
        $command = "choco install visualstudio2022community --version 117.9.0.0 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Visual Studio 2022 Community terminee." + "`r`n"
    }
    if ($Steam_CheckBox.IsChecked) {
        $command = "choco install steam --version 2.10.91.91221129 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Steam terminee." + "`r`n"
    }
    if ($DS4Windows_CheckBox.IsChecked) {
        $command = "choco install ds4windows --version 3.3.3 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de DS4Windows terminee." + "`r`n"
    }
    if ($NanaZip_CheckBox.IsChecked) {
        $command = "choco install nanazip --version 2.0.450.0 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de NanaZip terminee." + "`r`n"
    }
    if ($WinRAR_CheckBox.IsChecked) {
        $command = "choco install winrar --version 6.24 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de WinRAR terminee." + "`r`n"
    }
    if ($Epic_Games_Launcher_CheckBox.IsChecked) {
        $command = "choco install epicgameslauncher --version 1.3.93 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Epic Games Launcher terminee." + "`r`n"
    }
    if ($PDF_XChange_Viewer_CheckBox.IsChecked) {
        $command = "choco install pdfxchangeviewer --version 2.5.317.20161116 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de PDF-XChange Viewer terminee." + "`r`n"
    }
    if ($PDF24_CreatorCheckBox.IsChecked) {
        $command = "choco install pdf24 --version 11.15.2 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de PDF24 Creator terminee." + "`r`n"
    }
    if ($PDF_XChange_Editor_CheckBox.IsChecked) {
        $command = "choco install pdfxchangeeditor --version 10.2.1.385 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de PDF-XChange Editor terminee." + "`r`n"
    }
    if ($VLC_media_player_CheckBox.IsChecked) {
        $command = "choco install vlc --version 3.0.20 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de VLC Media Player terminee." + "`r`n"
    }
   if ($Paint_NET_CheckBox.IsChecked) {
        $command = "choco install paint.net -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de paint.net terminee." + "`r`n"
    }
    if ($Sublime_Text_2_CheckBox.IsChecked) {
        $command = "choco install sublimetext2 --version 2.0.2.2224 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Sublime Text 2 terminee." + "`r`n"
    }
    if ($NET_4_8_CheckBox.IsChecked) {
        $command = "choco install netfx-4.8-devpack --version 4.8.0.20190930 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de .NET Framework 4.8 Developer Pack terminee." + "`r`n"
    }
    if ($NET_5_0_CheckBox.IsChecked) {
        $command = "choco install dotnet-5.0-desktopruntime --version 5.0.17 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de .NET 5.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($NET_6_0_CheckBox.IsChecked) {
        $command = "choco install dotnet-6.0-desktopruntime --version 6.0.27 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de .NET 6.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($NET_7_0_CheckBox.IsChecked) {
        $command = "choco install dotnet-7.0-desktopruntime --version 7.0.16 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de .NET 7.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($NET_8_0_CheckBox.IsChecked) {
        $command = "choco install dotnet-8.0-desktopruntime --version 8.0.2 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de .NET 8.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($VisualC22_CheckBox.IsChecked) {
        $command = "choco install vcredist140 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de C++ Redistributable 2022 terminee." + "`r`n"
    }
    if ($Visual_C_15_CheckBox.IsChecked) {
        $command = "choco install vcredist2015 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de C++ Redistributable  2015 terminee." + "`r`n"
    }
    if ($Python_3_6_CheckBox.IsChecked) {
        $command = "choco install python36 --version 3.6.8 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Python 3.6 terminee." + "`r`n"
    }
    if ($FileZilla_CheckBox.IsChecked) {
        $command = "choco install filezilla --version 3.66.5 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de FileZilla terminee." + "`r`n"
    }
    if ($Google_Drive_CheckBox.IsChecked) {
        $command = "choco install google-drive-file-stream --version 56.0.11.2022 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Google Drive File Stream terminee." + "`r`n"
    }
    if ($libreoffice_CheckBox.IsChecked) {
        $command = "choco install libreoffice-sdk --version 7.5.2 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de LibreOffice SDK terminee." + "`r`n"
    }
    if ($Revo_Uninstaller_CheckBox.IsChecked) {
        $command = "choco install revo-uninstaller --version 2.4.5 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Revo Uninstaller terminee." + "`r`n"
    }
    if ($Geek_Uninstaller_CheckBox.IsChecked) {
        $command = "choco install geekuninstaller --version 1.5.2.165 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Geek Uninstaller terminee." + "`r`n"
    }
    if ($Adobe_Acrobat_Reader_CheckBox.IsChecked) {
        $command = "choco install adobereader --version 2023.8.20533 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Adobe Reader terminee." + "`r`n"
    }
    if ($rockstar_CheckBox.IsChecked) {
         $command = "choco install rockstar-launcher -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de rockstar luncher terminee." + "`r`n"
    }
        if ($AutoHotkey_CheckBox.IsChecked) {
        $command = "choco install autohotkey --version 1.1.37.1 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de AutoHotkey terminee." + "`r`n"
    }
    if ($AnyDesk_CheckBox.IsChecked) {
        $command = "choco install anydesk.install --version 8.0.8 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de AnyDesk terminee." + "`r`n"
    }
    if ($OBS_Studio_CheckBox.IsChecked) {
        $command = "choco install obs-studio --version 30.0.2 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de OBS Studio terminee." + "`r`n"
    }
    if ($VirtualBox_CheckBox.IsChecked) {
        $command = "choco install virtualbox --version 7.0.14 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de VirtualBox terminee." + "`r`n"
    }
    if ($Rufus_CheckBox.IsChecked) {
        $command = "choco install rufus.portable --version 4.4.0 -y --force"
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Installation de Rufus terminee." + "`r`n"
    }
})

# code to run when button is clicked
#-----------------------------------
$Uninstall_Btn.Add_Click({
    if ($Chrome_CheckBox.IsChecked) {
        $command = "choco uninstall googlechrome -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Chrome terminee." + "`r`n"
    }
    if ($Fierfox_CheckBox.IsChecked) {
        $command = "choco uninstall firefox -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Firefox terminee." + "`r`n"
    }
    if ($Breave_CheckBox.IsChecked) {
        $command = "choco uninstall brave -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Brave terminee." + "`r`n"
    }
    if ($Discord_CheckBox.IsChecked) {
        $command = "choco uninstall discord -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Discord terminee." + "`r`n"
    }
    if ($ONLYOFFICE_CheckBox.IsChecked) {
        $command = "choco uninstall onlyoffice -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de ONLYOFFICE terminee." + "`r`n"
    }
    if ($Everything_CheckBox.IsChecked) {
        $command = "choco uninstall everything -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Everything terminee." + "`r`n"
    }
    if ($powershell_CheckBox.IsChecked) {
        $command = "choco uninstall powershell.portable -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de PowerShell terminee." + "`r`n"
    }
    if ($Visual_Studio_Code_CheckBox.IsChecked) {
        $command = "choco uninstall vscode -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Visual Studio Code terminee." + "`r`n"
    }
    if ($Visual_Studio_Community22_CheckBox.IsChecked) {
        $command = "choco uninstall visualstudio2022community -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Visual Studio 2022 Community terminee." + "`r`n"
    }
    if ($Steam_CheckBox.IsChecked) {
        $command = "choco uninstall steam -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Steam terminee." + "`r`n"
    }
    if ($DS4Windows_CheckBox.IsChecked) {
        $command = "choco uninstall ds4windows -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de DS4Windows terminee." + "`r`n"
    }
    if ($NanaZip_CheckBox.IsChecked) {
        $command = "choco uninstall nanazip -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de NanaZip terminee." + "`r`n"
    }
    if ($WinRAR_CheckBox.IsChecked) {
        $command = "choco uninstall winrar -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de WinRAR terminee." + "`r`n"
    }
    if ($Epic_Games_Launcher_CheckBox.IsChecked) {
        $command = "choco uninstall epicgameslauncher -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Epic Games Launcher terminee." + "`r`n"
    }
    if ($PDF_XChange_Viewer_CheckBox.IsChecked) {
        $command = "choco uninstall pdfxchangeviewer -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de PDF-XChange Viewer terminee." + "`r`n"
    }
    if ($PDF24_CreatorCheckBox.IsChecked) {
        $command = "choco uninstall pdf24 -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de PDF24 Creator terminee." + "`r`n"
    }
    if ($PDF_XChange_Editor_CheckBox.IsChecked) {
        $command = "choco uninstall pdfxchangeeditor -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de PDF-XChange Editor terminee." + "`r`n"
    }
    if ($VLC_media_player_CheckBox.IsChecked) {
        $command = "choco uninstall vlc -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de VLC Media Player terminee." + "`r`n"
    }
    if ($Sublime_Text_2_CheckBox.IsChecked) {
        $command = "choco uninstall sublimetext2 -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Sublime Text 2 terminee." + "`r`n"
    }
    if ($NET_4_8_CheckBox.IsChecked) {
        $command = "choco uninstall netfx-4.8-devpack -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de .NET Framework 4.8 Developer Pack terminee." + "`r`n"
    }
    if ($NET_5_0_CheckBox.IsChecked) {
        $command = "choco uninstall dotnet-5.0-desktopruntime -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de .NET 5.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($NET_6_0_CheckBox.IsChecked) {
        $command = "choco uninstall dotnet-6.0-desktopruntime -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de .NET 6.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($NET_7_0_CheckBox.IsChecked) {
        $command = "choco uninstall dotnet-7.0-desktopruntime -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de .NET 7.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($NET_8_0_CheckBox.IsChecked) {
        $command = "choco uninstall dotnet-8.0-desktopruntime -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de .NET 8.0 Desktop Runtime terminee." + "`r`n"
    }
    if ($VisualC22_CheckBox.IsChecked) {
        $command = "choco uninstall vcredist140 -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de C++ Redistributable 2022 terminee." + "`r`n"
    }
    if ($Visual_C_15_CheckBox.IsChecked) {
        $command = "choco uninstall vcredist2015 -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de C++ Redistributable  2015 terminee." + "`r`n"
    }
    if ($Python_3_6_CheckBox.IsChecked) {
        $command = "choco uninstall python36 -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Python 3.6 terminee." + "`r`n"
    }
       if ($FileZilla_CheckBox.IsChecked) {
        $command = "choco uninstall filezilla -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de FileZilla terminee." + "`r`n"
    }
    if ($Google_Drive_CheckBox.IsChecked) {
        $command = "choco uninstall google-drive-file-stream -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Google Drive File Stream terminee." + "`r`n"
    }
    if ($libreoffice_CheckBox.IsChecked) {
        $command = "choco uninstall libreoffice-sdk -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de LibreOffice SDK terminee." + "`r`n"
    }
    if ($Revo_Uninstaller_CheckBox.IsChecked) {
        $command = "choco uninstall revo-uninstaller -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Revo Uninstaller terminee." + "`r`n"
    }
    if ($Geek_Uninstaller_CheckBox.IsChecked) {
        $command = "choco uninstall geekuninstaller -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Geek Uninstaller terminee." + "`r`n"
    }
    if ($Adobe_Acrobat_Reader_CheckBox.IsChecked) {
        $command = "choco uninstall adobereader -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Adobe Reader terminee." + "`r`n"
    }
    if ($rockstar_CheckBox.IsChecked) {
         $command = "choco uninstall rockstar-launcher -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de rockstar luncher terminee." + "`r`n"
    }
    if ($AutoHotkey_CheckBox.IsChecked) {
        $command = "choco uninstall autohotkey -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de AutoHotkey terminee." + "`r`n"
    }
    if ($AnyDesk_CheckBox.IsChecked) {
        $command = "choco uninstall anydesk.install -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de AnyDesk terminee." + "`r`n"
    }
    if ($OBS_Studio_CheckBox.IsChecked) {
        $command = "choco uninstall obs-studio -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de OBS Studio terminee." + "`r`n"
    }
    if ($VirtualBox_CheckBox.IsChecked) {
        $command = "choco uninstall virtualbox -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de VirtualBox terminee." + "`r`n"
    }
    if ($Rufus_CheckBox.IsChecked) {
        $command = "choco uninstall rufus.portable -y "
        Start-Process -Wait -NoNewWindow -FilePath "powershell" -ArgumentList $command
        $TextBox.Text += "Desinstallation de Rufus terminee." + "`r`n"
    }
   
})


# -------------------------------------Tab 2----------------------------------------

$Bloatware = @(
    #Unnecessary Windows 10 AppX Apps
    "Microsoft.3DBuilder"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.AppConnector"
    "Microsoft.BingFinance"
    "Microsoft.BingNews"
    "Microsoft.BingSports"
    "Microsoft.BingTranslator"
    "Microsoft.BingWeather"
    "Microsoft.BingFoodAndDrink"
    "Microsoft.BingHealthAndFitness"
    "Microsoft.BingTravel"
    "Microsoft.MinecraftUWP"
    "Microsoft.GamingServices"
    # "Microsoft.WindowsReadingList"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    "Microsoft.Messaging"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.NetworkSpeedTest"
    "Microsoft.News"
    "Microsoft.Office.Lens"
    "Microsoft.Office.Sway"
    "Microsoft.Office.OneNote"
    "Microsoft.OneConnect"
    "Microsoft.People"
    "Microsoft.Print3D"
    "Microsoft.SkypeApp"
    "Microsoft.Wallet"
    "Microsoft.Whiteboard"
    "Microsoft.WindowsAlarms"
    "microsoft.windowscommunicationsapps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsPhone"
    "Microsoft.WindowsSoundRecorder"
    "Microsoft.XboxApp"
    "Microsoft.ConnectivityStore"
    "Microsoft.CommsPhone"
    "Microsoft.ScreenSketch"
    "Microsoft.Xbox.TCUI"
    #"Microsoft.XboxGameOverlay"
    #"Microsoft.XboxGameCallableUI"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.MixedReality.Portal"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
    "Microsoft.YourPhone"
    "Microsoft.Getstarted"
    "Microsoft.MicrosoftOfficeHub"

    #Sponsored Windows 10 AppX Apps
    #Add sponsored/featured apps to remove in the "*AppName*" format
    "*EclipseManager*"
    "*ActiproSoftwareLLC*"
    "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
    "*Duolingo-LearnLanguagesforFree*"
    "*PandoraMediaInc*"
    "*CandyCrush*"
    "*BubbleWitch3Saga*"
    "*Wunderlist*"
    "*Flipboard*"
    "*Twitter*"
    "*Facebook*"
    "*Royal Revolt*"
    "*Sway*"
    "*Speed Test*"
    "*Dolby*"
    "*Viber*"
    "*ACGMediaPlayer*"
    "*Netflix*"
    "*OneCalendar*"
    "*LinkedInforWindows*"
    "*HiddenCityMysteryofShadows*"
    "*Hulu*"
    "*HiddenCity*"
    "*AdobePhotoshopExpress*"
    "*HotspotShieldFreeVPN*"

    #Optional: Typically not removed but you can if you need to for some reason
    "*Microsoft.Advertising.Xaml*"
    "*Microsoft.MSPaint*"
    "*Microsoft.MicrosoftStickyNotes*"
    #"*Microsoft.Windows.Photos*"
    #"*Microsoft.WindowsCalculator*"
    #"*Microsoft.WindowsStore*"
)


$remouveblot.Add_Click({
     Write-Host "Removing Bloatware"

    foreach ($Bloat in $Bloatware) {
        Get-AppxPackage -Name $Bloat| Remove-AppxPackage
        Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $Bloat | Remove-AppxProvisionedPackage -Online
        Write-Host "Trying to remove $Bloat."
    }

    Write-Host "Finished Removing Bloatware Apps"
    $TextBox2.Text += "Finished Removing Bloatware Apps" + "`r`n"

    })

$blot_reg_key.Add_Click({
        $ErrorActionPreference = 'SilentlyContinue'
        $Keys = @(
            
            New-PSDrive  HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
            #Remove Background Tasks
            "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y"
            "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
            "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe"
            "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
            "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
            "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
            
            #Windows File
            "HKCR:\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
            
            #Registry keys to delete if they aren't uninstalled by RemoveAppXPackage/RemoveAppXProvisionedPackage
            "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y"
            "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
            "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
            "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
            "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
            
            #Scheduled Tasks to delete
            "HKCR:\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe"
            
            #Windows Protocol Keys
            "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
            "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
            "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
            "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
               
            #Windows Share Target
            "HKCR:\Extensions\ContractId\Windows.ShareTarget\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        )
        
        #This writes the output of each key it is removing and also removes the keys listed above.
        ForEach ($Key in $Keys) {
            Write-Host "Removing $Key from registry"
            Remove-Item $Key -Recurse
        }
        Write-Host "Additional bloatware keys have been removed!"
        $TextBox2.Text += "Additional bloatware keys have been removed!" + "`r`n"
    
    })


$revert_reg_chang.Add_Click({
        $ErrorActionPreference = 'SilentlyContinue'
        #This function will revert the changes you made when running the Start-Debloat function.
        
        #This line reinstalls all of the bloatware that was removed
        Get-AppxPackage -AllUsers | ForEach { Add-AppxPackage -Verbose -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml" } 
    
        #Tells Windows to enable your advertising information.    
        Write-Host "Re-enabling key to show advertisement information"
        $Advertising = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
        If (Test-Path $Advertising) {
            Set-ItemProperty $Advertising  Enabled -Value 1
        }
            
        #Enables Cortana to be used as part of your Windows Search Function
        Write-Host "Re-enabling Cortana to be used in your Windows Search"
        $Search = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
        If (Test-Path $Search) {
            Set-ItemProperty $Search  AllowCortana -Value 1 
        }
            
        #Re-enables the Windows Feedback Experience for sending anonymous data
        Write-Host "Re-enabling Windows Feedback Experience"
        $Period = "HKCU:\Software\Microsoft\Siuf\Rules"
        If (!(Test-Path $Period)) { 
            New-Item $Period
        }
        Set-ItemProperty $Period PeriodInNanoSeconds -Value 1 
    
        #Enables bloatware applications               
        Write-Host "Adding Registry key to allow bloatware apps to return"
        $registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
        If (!(Test-Path $registryPath)) {
            New-Item $registryPath 
        }
        Set-ItemProperty $registryPath  DisableWindowsConsumerFeatures -Value 0 
        
        #Changes Mixed Reality Portal Key 'FirstRunSucceeded' to 1
        Write-Host "Setting Mixed Reality Portal value to 1"
        $Holo = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic"
        If (Test-Path $Holo) {
            Set-ItemProperty $Holo  FirstRunSucceeded -Value 1 
        }
        
        #Re-enables live tiles
        Write-Host "Enabling live tiles"
        $Live = "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications"
        If (!(Test-Path $Live)) {
            New-Item $Live 
        }
        Set-ItemProperty $Live  NoTileApplicationNotification -Value 0 
       
        #Re-enables data collection
        Write-Host "Re-enabling data collection"
        $DataCollection = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
        If (!(Test-Path $DataCollection)) {
            New-Item $DataCollection
        }
        Set-ItemProperty $DataCollection  AllowTelemetry -Value 1
        
        #Re-enables People Icon on Taskbar
        Write-Host "Enabling People Icon on Taskbar"
        $People = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People'
        If (Test-Path $People) {
            Set-ItemProperty $People -Name PeopleBand -Value 1 -Verbose
        }
    
        #Re-enables suggestions on start menu
        Write-Host "Enabling suggestions on the Start Menu"
        $Suggestions = "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
        If (!(Test-Path $Suggestions)) {
            New-Item $Suggestions
        }
        Set-ItemProperty $Suggestions  SystemPaneSuggestionsEnabled -Value 1 
        
        #Re-enables scheduled tasks that were disabled when running the Debloat switch
        Write-Host "Enabling scheduled tasks that were disabled"
        Get-ScheduledTask XblGameSaveTaskLogon | Enable-ScheduledTask 
        Get-ScheduledTask  XblGameSaveTask | Enable-ScheduledTask 
        Get-ScheduledTask  Consolidator | Enable-ScheduledTask 
        Get-ScheduledTask  UsbCeip | Enable-ScheduledTask 
        Get-ScheduledTask  DmClient | Enable-ScheduledTask 
        Get-ScheduledTask  DmClientOnScenarioDownload | Enable-ScheduledTask 

        Write-Host "Re-enabling and starting WAP Push Service"
        #Enable and start WAP Push Service
        Set-Service "dmwappushservice" -StartupType Automatic
        Start-Service "dmwappushservice"
    
        Write-Host "Re-enabling and starting the Diagnostics Tracking Service"
        #Enabling the Diagnostics Tracking Service
        Set-Service "DiagTrack" -StartupType Automatic
        Start-Service "DiagTrack"
        Write-Host "Done reverting changes!"

        #
        Write-Output "Restoring 3D Objects from Explorer 'My Computer' submenu"
        $Objects32 = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
        $Objects64 = "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}"
        If (!(Test-Path $Objects32)) {
            New-Item $Objects32
        }
        If (!(Test-Path $Objects64)) {
            New-Item $Objects64
        }
        $TextBox2.Text += "Done reverting changes!" + "`r`n"
    
    })

 $telemetry.Add_Click({
        $ErrorActionPreference = 'SilentlyContinue'
        #Disables Windows Feedback Experience
        Write-Host "Disabling Windows Feedback Experience program"
        $Advertising = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
        If (Test-Path $Advertising) {
            Set-ItemProperty $Advertising Enabled -Value 0 
        }
            
        #Stops Cortana from being used as part of your Windows Search Function
        Write-Host "Stopping Cortana from being used as part of your Windows Search Function"
        $Search = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
        If (Test-Path $Search) {
            Set-ItemProperty $Search AllowCortana -Value 0 
        }

        #Disables Web Search in Start Menu
        Write-Host "Disabling Bing Search in Start Menu"
        $WebSearch = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
        Set-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" BingSearchEnabled -Value 0 
        If (!(Test-Path $WebSearch)) {
            New-Item $WebSearch
        }
        Set-ItemProperty $WebSearch DisableWebSearch -Value 1 
            
        #Stops the Windows Feedback Experience from sending anonymous data
        Write-Host "Stopping the Windows Feedback Experience program"
        $Period = "HKCU:\Software\Microsoft\Siuf\Rules"
        If (!(Test-Path $Period)) { 
            New-Item $Period
        }
        Set-ItemProperty $Period PeriodInNanoSeconds -Value 0 

        #Prevents bloatware applications from returning and removes Start Menu suggestions               
        Write-Host "Adding Registry key to prevent bloatware apps from returning"
        $registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
        $registryOEM = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
        If (!(Test-Path $registryPath)) { 
            New-Item $registryPath
        }
        Set-ItemProperty $registryPath DisableWindowsConsumerFeatures -Value 1 

        If (!(Test-Path $registryOEM)) {
            New-Item $registryOEM
        }
        Set-ItemProperty $registryOEM ContentDeliveryAllowed -Value 0 
        Set-ItemProperty $registryOEM OemPreInstalledAppsEnabled -Value 0 
        Set-ItemProperty $registryOEM PreInstalledAppsEnabled -Value 0 
        Set-ItemProperty $registryOEM PreInstalledAppsEverEnabled -Value 0 
        Set-ItemProperty $registryOEM SilentInstalledAppsEnabled -Value 0 
        Set-ItemProperty $registryOEM SystemPaneSuggestionsEnabled -Value 0          
    
        #Preping mixed Reality Portal for removal    
        Write-Host "Setting Mixed Reality Portal value to 0 so that you can uninstall it in Settings"
        $Holo = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic"    
        If (Test-Path $Holo) {
            Set-ItemProperty $Holo  FirstRunSucceeded -Value 0 
        }

        #Disables Wi-fi Sense
        Write-Host "Disabling Wi-Fi Sense"
        $WifiSense1 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting"
        $WifiSense2 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots"
        $WifiSense3 = "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config"
        If (!(Test-Path $WifiSense1)) {
            New-Item $WifiSense1
        }
        Set-ItemProperty $WifiSense1  Value -Value 0 
        If (!(Test-Path $WifiSense2)) {
            New-Item $WifiSense2
        }
        Set-ItemProperty $WifiSense2  Value -Value 0 
        Set-ItemProperty $WifiSense3  AutoConnectAllowedOEM -Value 0 
        
        #Disables live tiles
        Write-Host "Disabling live tiles"
        $Live = "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications"    
        If (!(Test-Path $Live)) {      
            New-Item $Live
        }
        Set-ItemProperty $Live  NoTileApplicationNotification -Value 1 
        
        #Turns off Data Collection via the AllowTelemtry key by changing it to 0
        Write-Host "Turning off Data Collection"
        $DataCollection1 = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
        $DataCollection2 = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
        $DataCollection3 = "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection"    
        If (Test-Path $DataCollection1) {
            Set-ItemProperty $DataCollection1  AllowTelemetry -Value 0 
        }
        If (Test-Path $DataCollection2) {
            Set-ItemProperty $DataCollection2  AllowTelemetry -Value 0 
        }
        If (Test-Path $DataCollection3) {
            Set-ItemProperty $DataCollection3  AllowTelemetry -Value 0 
        }
    
        #Disabling Location Tracking
        Write-Host "Disabling Location Tracking"
        $SensorState = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}"
        $LocationConfig = "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration"
        If (!(Test-Path $SensorState)) {
            New-Item $SensorState
        }
        Set-ItemProperty $SensorState SensorPermissionState -Value 0 
        If (!(Test-Path $LocationConfig)) {
            New-Item $LocationConfig
        }
        Set-ItemProperty $LocationConfig Status -Value 0 
        
        #Disables People icon on Taskbar
        Write-Host "Disabling People icon on Taskbar"
        $People = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People'
        If (Test-Path $People) {
            Set-ItemProperty $People -Name PeopleBand -Value 0
        } 
        
        #Disables scheduled tasks that are considered unnecessary 
        Write-Host "Disabling scheduled tasks"
        #Get-ScheduledTask XblGameSaveTaskLogon | Disable-ScheduledTask
        Get-ScheduledTask XblGameSaveTask | Disable-ScheduledTask
        Get-ScheduledTask Consolidator | Disable-ScheduledTask
        Get-ScheduledTask UsbCeip | Disable-ScheduledTask
        Get-ScheduledTask DmClient | Disable-ScheduledTask
        Get-ScheduledTask DmClientOnScenarioDownload | Disable-ScheduledTask

        #Write-Host "Uninstalling Telemetry Windows Updates"
        #Uninstalls Some Windows Updates considered to be Telemetry. !WIP!
        #Wusa /Uninstall /KB:3022345 /norestart /quiet
        #Wusa /Uninstall /KB:3068708 /norestart /quiet
        #Wusa /Uninstall /KB:3075249 /norestart /quiet
        #Wusa /Uninstall /KB:3080149 /norestart /quiet        

        Write-Host "Stopping and disabling WAP Push Service"
        #Stop and disable WAP Push Service
        Stop-Service "dmwappushservice"
        Set-Service "dmwappushservice" -StartupType Disabled

        Write-Host "Stopping and disabling Diagnostics Tracking Service"
        #Disabling the Diagnostics Tracking Service
        Stop-Service "DiagTrack"
        Set-Service "DiagTrack" -StartupType Disabled
        Write-Host "Telemetry has been disabled!"
        $TextBox2.Text += "Telemetry has been disabled!" + "`r`n"
    
    })


$dark_enable.Add_Click({
        Write-Host "Enabling Dark Mode"
        $Theme = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty $Theme AppsUseLightTheme -Value 0
        Start-Sleep 1
        Write-Host "Dark Mode Enabled"
        $TextBox2.Text += "Dark Mode Enabled" + "`r`n"

    
    })


$dark_disable.Add_Click({
        Write-Host "Disabling Dark Mode"
        $Theme = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty $Theme AppsUseLightTheme -Value 1
        Start-Sleep 1
        Write-Host "Dark Mode Disabled"
        $TextBox2.Text += "Dark Mode Disabled" + "`r`n"
    
    })






    $services = @(
    "diagnosticshub.standardcollector.service"     # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                    # Diagnostics Tracking Service
    "DPS"
    "dmwappushservice"                             # WAP Push Message Routing Service (see known issues)
    "lfsvc"                                        # Geolocation Service
    "MapsBroker"                                   # Downloaded Maps Manager
    "NetTcpPortSharing"                            # Net.Tcp Port Sharing Service
    "RemoteAccess"                                 # Routing and Remote Access
    "RemoteRegistry"                               # Remote Registry
    "SharedAccess"                                 # Internet Connection Sharing (ICS)
    "TrkWks"                                       # Distributed Link Tracking Client
    #"WbioSrvc"                                     # Windows Biometric Service (required for Fingerprint reader / facial detection)
    #"WlanSvc"                                      # WLAN AutoConfig
    "WMPNetworkSvc"                                # Windows Media Player Network Sharing Service
    #"wscsvc"                                       # Windows Security Center Service
    "WSearch"                                      # Windows Search
    "XblAuthManager"                               # Xbox Live Auth Manager
    "XblGameSave"                                  # Xbox Live Game Save Service
    "XboxNetApiSvc"                                # Xbox Live Networking Service
    "XboxGipSvc"                                   #Disables Xbox Accessory Management Service
    "ndu"                                          # Windows Network Data Usage Monitor
    "WerSvc"                                       #disables windows error reporting
    #"Spooler"                                      #Disables your printer
    "Fax"                                          #Disables fax
    "fhsvc"                                        #Disables fax histroy
    "gupdate"                                      #Disables google update
    "gupdatem"                                     #Disable another google update
    "stisvc"                                       #Disables Windows Image Acquisition (WIA)
    "AJRouter"                                     #Disables (needed for AllJoyn Router Service)
    "MSDTC"                                        # Disables Distributed Transaction Coordinator
    "WpcMonSvc"                                    #Disables Parental Controls
    "PhoneSvc"                                     #Disables Phone Service(Manages the telephony state on the device)
    "PrintNotify"                                  #Disables Windows printer notifications and extentions
    "PcaSvc"                                       #Disables Program Compatibility Assistant Service
    "WPDBusEnum"                                   #Disables Portable Device Enumerator Service
    #"LicenseManager"                               #Disable LicenseManager(Windows store may not work properly)
    "seclogon"                                     #Disables  Secondary Logon(disables other credentials only password will work)
    "SysMain"                                      #Disables sysmain
    "lmhosts"                                      #Disables TCP/IP NetBIOS Helper
    "wisvc"                                        #Disables Windows Insider program(Windows Insider will not work)
    "FontCache"                                    #Disables Windows font cache
    "RetailDemo"                                   #Disables RetailDemo whic is often used when showing your device
    "ALG"                                          # Disables Application Layer Gateway Service(Provides support for 3rd party protocol plug-ins for Internet Connection Sharing)
    #"BFE"                                         #Disables Base Filtering Engine (BFE) (is a service that manages firewall and Internet Protocol security)
    #"BrokerInfrastructure"                         #Disables Windows infrastructure service that controls which background tasks can run on the system.
    "SCardSvr"                                      #Disables Windows smart card
    "EntAppSvc"                                     #Disables enterprise application management.
    "BthAvctpSvc"                                   #Disables AVCTP service (if you use  Bluetooth Audio Device or Wireless Headphones. then don't disable this)
    #"FrameServer"                                   #Disables Windows Camera Frame Server(this allows multiple clients to access video frames from camera devices.)
    "Browser"                                       #Disables computer browser
    "BthAvctpSvc"                                   #AVCTP service (This is Audio Video Control Transport Protocol service.)
    #"BDESVC"                                        #Disables bitlocker
    "iphlpsvc"                                      #Disables ipv6 but most websites don't use ipv6 they use ipv4     
    "edgeupdate"                                    # Disables one of edge update service  
    "MicrosoftEdgeElevationService"                 # Disables one of edge  service 
    "edgeupdatem"                                   # disbales another one of update service (disables edgeupdatem)                          
    "SEMgrSvc"                                      #Disables Payments and NFC/SE Manager (Manages payments and Near Field Communication (NFC) based secure elements)
    #"PNRPsvc"                                      # Disables peer Name Resolution Protocol ( some peer-to-peer and collaborative applications, such as Remote Assistance, may not function, Discord will still work)
    #"p2psvc"                                       # Disbales Peer Name Resolution Protocol(nables multi-party communication using Peer-to-Peer Grouping.  If disabled, some applications, such as HomeGroup, may not function. Discord will still work)
    #"p2pimsvc"                                     # Disables Peer Networking Identity Manager (Peer-to-Peer Grouping services may not function, and some applications, such as HomeGroup and Remote Assistance, may not function correctly.Discord will still work)
    "PerfHost"                                      #Disables  remote users and 64-bit processes to query performance .
    "BcastDVRUserService_48486de"                   #Disables GameDVR and Broadcast   is used for Game Recordings and Live Broadcasts
    "CaptureService_48486de"                        #Disables ptional screen capture functionality for applications that call the Windows.Graphics.Capture API.  
    "cbdhsvc_48486de"                               #Disables   cbdhsvc_48486de (clipboard service it disables)
    #"BluetoothUserService_48486de"                  #disbales BluetoothUserService_48486de (The Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.)
    "WpnService"                                    #Disables WpnService (Push Notifications may not work )
    #"StorSvc"                                       #Disables StorSvc (usb external hard drive will not be reconised by windows)
    "RtkBtManServ"                                  #Disables Realtek Bluetooth Device Manager Service
    "QWAVE"                                         #Disables Quality Windows Audio Video Experience (audio and video might sound worse)
     #Hp services
    "HPAppHelperCap"
    "HPDiagsCap"
    "HPNetworkCap"
    "HPSysInfoCap"
    "HpTouchpointAnalyticsService"
    #hyper-v services
     "HvHost"                          
    "vmickvpexchange"
    "vmicguestinterface"
    "vmicshutdown"
    "vmicheartbeat"
    "vmicvmsession"
    "vmicrdv"
    "vmictimesync" 
    # Services which cannot be disabled
    #"WdNisSvc"
)




$disable_services.Add_Click({

    foreach ($service in $services) {
    Write-Host "Setting $service StartupType to Manual"
    Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Manual
}

    Write-Host "Essential Tweaks Completed - Please Reboot"
    $TextBox2.Text += "Disebling services Completed - Please Reboot" + "`r`n"

    
    })




$onedreive.Add_Click({

If (Test-Path "$env:USERPROFILE\OneDrive\*") {
            Write-Host "Files found within the OneDrive folder! Checking to see if a folder named OneDriveBackupFiles exists."
            Start-Sleep 1
              
            If (Test-Path "$env:USERPROFILE\Desktop\OneDriveBackupFiles") {
                Write-Host "A folder named OneDriveBackupFiles already exists on your desktop. All files from your OneDrive location will be moved to that folder." 
            }
            else {
                If (!(Test-Path "$env:USERPROFILE\Desktop\OneDriveBackupFiles")) {
                    Write-Host "A folder named OneDriveBackupFiles will be created and will be located on your desktop. All files from your OneDrive location will be located in that folder."
                    New-item -Path "$env:USERPROFILE\Desktop" -Name "OneDriveBackupFiles"-ItemType Directory -Force
                    Write-Host "Successfully created the folder 'OneDriveBackupFiles' on your desktop."
                }
            }
            Start-Sleep 1
            Move-Item -Path "$env:USERPROFILE\OneDrive\*" -Destination "$env:USERPROFILE\Desktop\OneDriveBackupFiles" -Force
            Write-Host "Successfully moved all files/folders from your OneDrive folder to the folder 'OneDriveBackupFiles' on your desktop."
            Start-Sleep 1
            Write-Host "Proceeding with the removal of OneDrive."
            Start-Sleep 1
        }
        Else {
            Write-Host "Either the OneDrive folder does not exist or there are no files to be found in the folder. Proceeding with removal of OneDrive."
            Start-Sleep 1
            Write-Host "Enabling the Group Policy 'Prevent the usage of OneDrive for File Storage'."
            $OneDriveKey = 'HKLM:Software\Policies\Microsoft\Windows\OneDrive'
            If (!(Test-Path $OneDriveKey)) {
                Mkdir $OneDriveKey
                Set-ItemProperty $OneDriveKey -Name OneDrive -Value DisableFileSyncNGSC
            }
            Set-ItemProperty $OneDriveKey -Name OneDrive -Value DisableFileSyncNGSC
        }

        Write-Host "Uninstalling OneDrive. Please wait..."
    
        New-PSDrive  HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
        $onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
        $ExplorerReg1 = "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
        $ExplorerReg2 = "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
        Stop-Process -Name "OneDrive*"
        Start-Sleep 2
        If (!(Test-Path $onedrive)) {
            $onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
        }
        Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
        Start-Sleep 2
        Write-Host "Stopping explorer"
        Start-Sleep 1
        taskkill.exe /F /IM explorer.exe
        Start-Sleep 3
        Write-Host "Removing leftover files"
        If (Test-Path "$env:USERPROFILE\OneDrive") {
            Remove-Item "$env:USERPROFILE\OneDrive" -Force -Recurse
        }
        If (Test-Path "$env:LOCALAPPDATA\Microsoft\OneDrive") {
            Remove-Item "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse
        }
        If (Test-Path "$env:PROGRAMDATA\Microsoft OneDrive") {
            Remove-Item "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse
        }
        If (Test-Path "$env:SYSTEMDRIVE\OneDriveTemp") {
            Remove-Item "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse
        }
        Write-Host "Removing OneDrive from windows explorer"
        If (!(Test-Path $ExplorerReg1)) {
            New-Item $ExplorerReg1
        }
        Set-ItemProperty $ExplorerReg1 System.IsPinnedToNameSpaceTree -Value 0 
        If (!(Test-Path $ExplorerReg2)) {
            New-Item $ExplorerReg2
        }
        Set-ItemProperty $ExplorerReg2 System.IsPinnedToNameSpaceTree -Value 0
        Write-Host "Restarting Explorer that was shut down before."
        Start-Process explorer.exe -NoNewWindow
        Write-Host "OneDrive has been successfully uninstalled!"
        $TextBox2.Text += "OneDrive has been successfully uninstalled!" + "`r`n"
        
        Remove-item env:OneDrive
    
    })




 $spotify_Install.Add_Click({

        iex "& { $(iwr -useb 'https://raw.githubusercontent.com/SpotX-Official/spotx-official.github.io/main/run.ps1') } -confirm_uninstall_ms_spoti -confirm_spoti_recomended_over -podcasts_off -block_update_on  -new_theme -adsections_off -lyrics_stat spotify"
    
    })


$xamlForm.ShowDialog() | out-null
