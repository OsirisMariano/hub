# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @docs = Doc.all
  end
end
