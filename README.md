# Band Pass Filter
## What it does:
This filter takes in an array of frequencies, and returns a new array where all frequencies are between and min and max range.
## How to use:

`bandpass = BandPass.new([ARRAY OF FREQUENCIES])`
Use `bandpass.filter_frequencies` to filter frequencies.
Use `bandpass.change_min_and_max_values(MIN, MAX)` to change minimum and maximum frequencies.