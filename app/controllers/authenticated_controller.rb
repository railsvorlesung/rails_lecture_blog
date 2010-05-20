class AuthenticatedController < ApplicationController
  before_filter :authentication
end