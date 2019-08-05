spaces = require("hs._asm.undocumented.spaces")

function moveWindowToSpace(sp)
    local win = hs.window.focusedWindow()
    local uuid = win:screen():spacesUUID()
    local spaceID = spaces.layout()[uuid][sp]
    spaces.moveWindowToSpace(win:id(), spaceID)
    spaces.changeToSpace(spaceID, false)
end

function changeSpace(sp)
    local uuid = hs.screen.mainScreen():spacesUUID()
    local spaceID = spaces.layout()[uuid][sp]
    spaces.changeToSpace(spaceID, false)
end

hs.window.animationDuration = 0.1

mod1 = {'cmd', 'ctrl'}
mod2 = {'ctrl'}

-- Move windows
hs.hotkey.bind(mod1, 'h', function() hs.window.focusedWindow():moveToUnit(hs.layout.left50) end)
hs.hotkey.bind(mod1, 'l', function() hs.window.focusedWindow():moveToUnit(hs.layout.right50) end)
hs.hotkey.bind(mod1, 'f', function() hs.window.focusedWindow():moveToUnit(hs.layout.maximized) end)
hs.hotkey.bind(mod1, 'c', function() hs.window.focusedWindow():centerOnScreen() end)
hs.hotkey.bind(mod1, 'j', function() hs.window.focusedWindow():moveToUnit('[0,50,50,100]') end)
hs.hotkey.bind(mod1, 'u', function() hs.window.focusedWindow():moveToUnit('[0,0,50,50]') end)
hs.hotkey.bind(mod1, 'i', function() hs.window.focusedWindow():moveToUnit('[50,0,100,50]') end)
hs.hotkey.bind(mod1, 'k', function() hs.window.focusedWindow():moveToUnit('[50,50,100,100]') end)

-- Change spaces
hs.hotkey.bind(mod2, '1', function() changeSpace(1) end)
hs.hotkey.bind(mod2, '2', function() changeSpace(2) end)
hs.hotkey.bind(mod2, '3', function() changeSpace(3) end)
hs.hotkey.bind(mod2, '4', function() changeSpace(4) end)

-- Move windows between spaces
hs.hotkey.bind(mod1, '1', function() moveWindowToSpace(1) end)
hs.hotkey.bind(mod1, '2', function() moveWindowToSpace(2) end)
hs.hotkey.bind(mod1, '3', function() moveWindowToSpace(3) end)
hs.hotkey.bind(mod1, '4', function() moveWindowToSpace(4) end)

-- Auto reload
hs.loadSpoon('ReloadConfiguration')
spoon.ReloadConfiguration:start()
hs.alert.show('Config loaded')
