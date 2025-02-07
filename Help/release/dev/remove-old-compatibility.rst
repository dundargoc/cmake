remove-old-compatibility
------------------------

* Compatibility with versions of CMake older than 3.0 has been removed.
  Calls to :command:`cmake_minimum_required` or :command:`cmake_policy`
  that set the policy version to an older value now issue an error.
  Note that calls to those commands can still support older versions of
  CMake by using their ``VERSION`` arguments' ``<min>...<max>`` syntax.
  This requires only the ``<min>`` version of CMake, but when running a
  newer version, sets policies up to the ``<max>`` version.
