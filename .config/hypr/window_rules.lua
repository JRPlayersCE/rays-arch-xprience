local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = {
        class = "xwaylandvideobridge"
    },

    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,
    max_size = { 1, 1 },
    opacity = 0.0
})

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "flameshot-fix",
    match = {
        class = "flameshot",
    },

    fullscreen = true,
    no_anim = true,
})

hl.window_rule({
    name = "mpv-gui",
    match = {
        class = "mpv",
    },

    workspace = "special:mpv",
    fullscreen = true,
    opacity = 0.5,
    no_anim = true,
})


hl.window_rule({
    name = "pavucontrol-gui",
    match = {
        class = "org.pulseaudio.pavucontrol",
    },

    size = "monitor_w/3 monitor_h /2",
    float = true,
})

hl.window_rule({
    name = "waypaper-good",
    match = {
        class = "waypaper",
    },

    workspace = "special:waypaper-gui",
    pin = true,
    fullscreen = true,
    opacity = 0.5,
})
