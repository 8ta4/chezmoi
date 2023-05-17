
tell application "UTM"
    -- Find the existing VM named "macOS"
    set vm to virtual machine named "macOS"
    
    -- Get the current configuration of the VM
    set config to configuration of vm
    
    -- Set the number of CPU cores to a higher value (e.g., 4)
    set cpu cores of config to 4
    
    -- Save the updated configuration (VM must be stopped)
    update configuration of vm with config
end tell
