module SmartAlec
  class FriendlyTime
    def get
      Time.now.strftime("%A, %B %d %Y %l:%M %p")
    end
  end
end