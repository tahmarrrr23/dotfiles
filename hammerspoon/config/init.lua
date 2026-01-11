hs.hotkey.bind({"ctrl"}, "t", function()
  local rio = hs.application.find('rio')
  if rio and rio:isFrontmost() then
    rio:hide()
  else
    hs.application.launchOrFocus("Rio.app")

    local function moveRio()
      local app = hs.application.find('rio')
      if app then
        local win = app:mainWindow()
        if win then
          local f = win:frame()
          local screen = win:screen()
          local max = screen:frame()

          f.x = max.x
          f.y = max.y + (max.h * 2 / 3)
          f.w = max.w
          f.h = max.h / 3
          win:setFrame(f)
        end
      end
    end

    moveRio()
    hs.timer.doAfter(0.5, moveRio)
  end
end)
