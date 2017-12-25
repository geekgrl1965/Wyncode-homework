# When creating your own error class, what’s the difference between subclassing
# StandardError and subclassing Exception?
# Create an error class that would be appropriate as a subclass to StandardError.
# Create another error class that would be appropriate as a subclass to Exception.
# The names of each of your classes should be appropriate for the type of error defined.

#raises an error if a calculation is performed with zero
class ZeroError < StandardError
end

#raises an error if user is not connected to the internet
class NoConnectionError < Exception
end

Exception will rescue all errors, including system errors that have
nothing to do with your program.  Subclassing StandardError will rescue only
the errors that are caused by your program, so you don't screw anything up
for the user
