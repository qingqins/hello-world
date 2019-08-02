# Create a project
open_project -reset proj

# Add design files
add_files example.cpp
# Add test bench & files
add_files -tb example_test.cpp

# Set the top-level function
set_top example
#set_directive_pipeline example 
# ########################################################
# Create a solution
open_solution -reset solution1
# Define technology and clock rate
set_part [::hls_regr::get_device]
create_clock -period "75MHz"

csim_design 
csynth_design 
######   PLEASE DO NOT EDIT BELOW THIS LINE   ###################
#################### Tcl command line directives ###################
set ret [catch {cosim_design -deadlock_detect} err]
if {$ret != 0} {
    set report [file join [auto_get_db] .. .. .. .. scout_hls.log]
    if { ![file exists $report] } {
        error "$report does not exist"
    }
    set handle [open $report r]
    set report_buf [read -nonewline $handle]
    close $handle
    set SearchString {ERROR!!! DEADLOCK DETECTED at}
    if {[regexp $SearchString $report_buf]} {
        puts "PASSED: expected error message prompted. "
        exit 0
    } else {
        puts "FAILED: expected error message not prompted."
        exit 1
    }
}

close_solution	

exit
