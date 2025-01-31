# Prompt user for input
Write-Host "Enter container ID list for audit random selection (one per line), then press Ctrl+Z and Enter:"
$inputs = @()

# Read multiple lines of input
while ($line = Read-Host) {
    if ($line -eq "") { break }
    $inputs += $line
}

# Ensure inputs are available
if ($inputs.Count -eq 0) {
    Write-Host "No container IDs provided. Exiting..."
    exit
}

# Shuffle the inputs randomly
$shuffledInputs = $inputs | Sort-Object {Get-Random}

# Set max selections (whichever is smaller: 40 or number of inputs)
$maxAttempts = [math]::Min(40, $shuffledInputs.Count)
$count = 0

# Loop to display a random container ID without repetition
while ($count -lt $maxAttempts) {
    Read-Host "Press Enter to get a random container ID (or Ctrl+C to exit)..."
    Write-Host "Selection #$($count + 1): $($shuffledInputs[$count])"
    $count++
}
