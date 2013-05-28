# -*- encoding : utf-8 -*-

module ApplicationHelper

  def money(amount, currency='zł')
    "#{amount} #{currency}"
  end
end
