module SmartAlec
  class CurrentTime
    def get
      return "The date and time currently is: " + Time.now.strftime("%A, %B %d %Y %l:%M %p")
    end
  end
end