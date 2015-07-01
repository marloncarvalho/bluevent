module Exceptions

  # Exception raised when the user provides wrong credentials.
  class LoginFailure < RuntimeError
  end

  # Exception raised when we can't contact the remote Eventioz server.
  class ConnectionError < RuntimeError
  end

end