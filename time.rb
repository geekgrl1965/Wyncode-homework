# p Time.now
$ gem install –no-rdoc –no-ri gemname

# The time command shows you how long a command runs.
# Just prefix it before any other command. For example:
# $ time ls

# Show how much time you save skipping the Gem documentation by timing a
# gem install with and without that special line of code from the previous
# question. So, for example:
# uninstall the activesupport gem
# time how long it takes to re-install it
# uninstall the activesupport gem again
# turn on the option to skip the documentation
# time how long it takes to re-install it
#
# Submit the time output from your terminal.

KarensMacBook:~ Karen$ time gem install activesupport -v 5.0.0
Fetching: activesupport-5.0.0.gem (100%)
Successfully installed activesupport-5.0.0
Parsing documentation for activesupport-5.0.0
Installing ri documentation for activesupport-5.0.0
Done installing documentation for activesupport after 3 seconds
1 gem installed

real	0m5.259s
user	0m3.186s
sys	0m0.441s

KarensMacBook:~ Karen$ time gem uninstall activesupport -v 5.0.0
Successfully uninstalled activesupport-5.0.0

real	0m0.326s
user	0m0.183s
sys	0m0.132s

KarensMacBook:~ Karen$ time gem install -no-rdoc -no-ri activesupport -v 5.0.0
Fetching: activesupport-5.0.0.gem (100%)
Successfully installed activesupport-5.0.0
Parsing documentation for activesupport-5.0.0
Installing ri documentation for activesupport-5.0.0
Done installing documentation for activesupport after 3 seconds
1 gem installed

real	0m4.176s
user	0m3.078s
sys	0m0.317s
