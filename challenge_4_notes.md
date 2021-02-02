Type of error:
    NameError (uninitialized constant DockingStation)

File path:
    4: from /Users/raf/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
    3: from /Users/raf/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
    2: from /Users/raf/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
    1: from (irb):1:in `<main>

Line number:
    (irb):1:in <main>

Error meaning - according to Ruby Docs:
    Raised when a given name is invalid or undefined.

Possible Solutions:
    We can create the DockingStation class in our active irb session.
    We can then run our original command.

    Alternatively, we can also create a docking_station.rb file,
    create the DockingStation class within that file, and then require it in irb.
    We can then run our original command.

    This is the less complete solution, as it violates the principle of creating
    a spec file with a failing test before the creation of passing code (when doing TDD).
